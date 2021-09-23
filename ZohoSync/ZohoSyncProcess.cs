using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace ZohoSync
{
	public class ZohoSyncProcess
	{
		public string clientID { get; set; }
		public string clientSecret { get; set; }
		public string redirectUrl { get; set; }

		public VanguarSoftData.Utils.VanguarSoftData _DATA;

		public ZohoSyncProcess()
		{

		}

		public ZohoSyncProcess(string _clientID, string _clientSecret, string _redirectUrl)
		{
			clientID = _clientID;
			clientSecret = _clientSecret;
			redirectUrl = _redirectUrl;
			_DATA = new VanguarSoftData.Utils.VanguarSoftData("https://accounts.zoho.com/oauth/v2", "");
		}

		public async Task<string> AccessToken(string Grand_token)
		{
			string token = "";
			Dictionary<string, object> Parameter = new Dictionary<string, object>();
			Parameter.Add("client_id", clientID);
			Parameter.Add("client_secret", clientSecret);
			Parameter.Add("redirect_uri", redirectUrl);
			Parameter.Add("grant_type", "authorization_code");
			var result = await _DATA.GetDataServiceJson(string.Format("token?code={0}", Grand_token), Parameter);
			return token;
		}

		public async Task<string> RefreshToken(string token)
		{
			Dictionary<string, object> Parameter = new Dictionary<string, object>();
			Parameter.Add("client_id", clientID);
			Parameter.Add("client_secret", clientSecret);
			Parameter.Add("redirect_uri", redirectUrl);
			Parameter.Add("grant_type", "refresh_token");
			var result = await _DATA.GetDataServiceJson(string.Format("token?client_id={0}&client_secret={1}&refresh_token={2}&grant_type=refresh_token", clientID, clientSecret, token), null, "", VanguarSoftData.Utils.VanguarSoftData.Methop.POST);
			return result;
		}

		public async Task<List<Dictionary<string, object>>> GetActiveUsers(string Token)
		{
			var result = await _DATA.GetDataServiceJson(string.Format("subscriptions?filter_by=SubscriptionStatus.ALL"), null, Token);
			var DicValues = JsonConvert.DeserializeObject<Dictionary<string, object>>(result);
			if (DicValues.ContainsKey("success"))
				if (DicValues["success"].ToString() == "success")
					if (DicValues.ContainsKey("subscriptions"))
						return JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(DicValues["subscriptions"].ToString());
			return null;
		}

		public async Task<List<Dictionary<string, object>>> GetAccounts(string Token)
		{
			int countPage = 1;
			bool next = true;
			List<Dictionary<string, object>> customersTotal = new List<Dictionary<string, object>>();
			while (next)
			{
				int registerCount = 0;
				var result = await _DATA.GetDataServiceJson(string.Format("Accounts?page={0}", countPage), null, Token, VanguarSoftData.Utils.VanguarSoftData.Methop.GET, false, "https://www.zohoapis.com/crm/v2.1");
				if (result == System.Net.HttpStatusCode.Unauthorized.ToString())
				{
					customersTotal = null;
					return customersTotal;
				}
				var DicValues = JsonConvert.DeserializeObject<Dictionary<string, object>>(result);
				if (DicValues != null)
				{
					if (DicValues.ContainsKey("data"))
					{
						var list = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(DicValues["data"].ToString());
						registerCount = list.Count;
						if (list.Count > 0)
						{
							customersTotal.AddRange(list);
							var pages = JsonConvert.DeserializeObject<Dictionary<string, object>>(DicValues["info"].ToString());
							if (pages.ContainsKey("more_records"))
								if (!Convert.ToBoolean(pages["more_records"]))
									next = false;
								else
									countPage++;
							else
								next = false;
						}
					}
				}
				if (registerCount == 0)
					next = false;
			}
			return customersTotal;
		}

		public async Task<List<Dictionary<string, object>>> GetContacs(string Token)
		{
			int countPage = 1;
			bool next = true;
			List<Dictionary<string, object>> customersTotal = new List<Dictionary<string, object>>();
			while (next)
			{
				int registerCount = 0;
				var result = await _DATA.GetDataServiceJson(string.Format("contacts?page={0}", countPage), null, Token, VanguarSoftData.Utils.VanguarSoftData.Methop.GET, false, "https://www.zohoapis.com/crm/v2");
				if (result == System.Net.HttpStatusCode.Unauthorized.ToString())
				{
					customersTotal = null;
					return customersTotal;
				}
				var DicValues = JsonConvert.DeserializeObject<Dictionary<string, object>>(result);
				if (DicValues != null)
				{
					if (DicValues.ContainsKey("data"))
					{
						var list = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(DicValues["data"].ToString());
						registerCount = list.Count;
						if (list.Count > 0)
						{
							customersTotal.AddRange(list);
							var pages = JsonConvert.DeserializeObject<Dictionary<string, object>>(DicValues["info"].ToString());
							if (pages.ContainsKey("more_records"))
								if (!Convert.ToBoolean(pages["more_records"]))
									next = false;
								else
									countPage++;
							else
								next = false;
						}
					}
				}
				if (registerCount == 0)
					next = false;
			}
			return customersTotal;
		}


		public async Task<List<Dictionary<string, object>>> GetActiveContacs(string customer_id, string Token)
		{
			var result = await _DATA.GetDataServiceJson(string.Format("customers/{0}/contactpersons", customer_id), null, Token, VanguarSoftData.Utils.VanguarSoftData.Methop.GET, false, "https://subscriptions.zoho.com/api/v1");
			var DicValues = JsonConvert.DeserializeObject<Dictionary<string, object>>(result);
			if (DicValues != null)
				if (DicValues.ContainsKey("message"))
					if (DicValues["message"].ToString() == "success")
						if (DicValues.ContainsKey("contactpersons"))
							return JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(DicValues["contactpersons"].ToString());
			return null;
		}

	}
}
