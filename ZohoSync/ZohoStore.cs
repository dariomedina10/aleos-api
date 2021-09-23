using Com.Zoho.API.Authenticator;
using Com.Zoho.API.Authenticator.Store;
using Com.Zoho.Crm.API;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZohoSync.Properties;

namespace ZohoSync
{
	public class ZohoStore : TokenStore
	{
#if DEBUG
		VanguarSoftData.Utils.VanguarSoftData _Data = new VanguarSoftData.Utils.VanguarSoftData(Settings.Default.Server_debug, Settings.Default.port_debug);
#else
		VanguarSoftData.Utils.VanguarSoftData _Data = new VanguarSoftData.Utils.VanguarSoftData(Settings.Default.Server, Settings.Default.port);
#endif
		public static List<Dictionary<string, object>> LIST_CONFIG { get; set; } = null;

		/// <summary>
		/// Obtiene un valor de la configuracion.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal string GetValue(string key)
		{
			if (LIST_CONFIG == null)
				GetAll();
			if (LIST_CONFIG != null)
			{
				var value = LIST_CONFIG.Where(x => x["confName"].ToString() == key)?.FirstOrDefault();
				if (value != null)
					if (value.ContainsKey("confValue"))
						return value["confValue"].ToString();
			}
			return "";
		}

		private void GetAll()
		{
			var ResultJson = _Data.GetDataServiceJson("api/config").Result;
			if (ResultJson != null)
			{
				var ResultData = Newtonsoft.Json.JsonConvert.DeserializeObject<Dictionary<string, object>>(ResultJson);
				if (Convert.ToBoolean(ResultData[ResponseValues.Success.ToString()]))
					LIST_CONFIG = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(ResultData[ResponseValues.Value.ToString()].ToString());
			}
		}

		public void DeleteToken(Token token)
		{
			
		}

		public void DeleteTokens()
		{
			
		}

		public Token GetToken(UserSignature user, Token token)
		{
			string clientId = GetValue("ClientID");
			string clientSecret = GetValue("ClientSecret");
			string redirectUrl = GetValue("RedirectURL");
			string tokenValue = GetValue("AccessToken");
			Com.Zoho.API.Authenticator.OAuthToken tokenReturn = new OAuthToken(clientId, clientSecret, tokenValue, OAuthToken.TokenType.GRANT, redirectUrl);
			return tokenReturn;
		}

		public List<Token> GetTokens()
		{
			List<Token> list = new List<Token>();
			string clientId = GetValue("ClientID");
			string clientSecret = GetValue("ClientSecret");
			string redirectUrl = GetValue("RedirectURL");
			string tokenValue = GetValue("AccessToken");
			Com.Zoho.API.Authenticator.OAuthToken tokenReturn = new OAuthToken(clientId, clientSecret, tokenValue, OAuthToken.TokenType.GRANT, redirectUrl);
			list.Add(tokenReturn);
			return list;
		}

		public async void SaveToken(UserSignature user, Token token)
		{
			Com.Zoho.API.Authenticator.OAuthToken tokenReturn = token as OAuthToken;
			await _Data.GetDataServiceJson("api/config/update", new Dictionary<string, object>() { { "name", "AccessToken" }, { "value", tokenReturn.AccessToken } });
			await _Data.GetDataServiceJson("api/config/update", new Dictionary<string, object>() { { "name", "RefreshToken" }, { "value", tokenReturn.RefreshToken } });
			await _Data.GetDataServiceJson("api/config/update", new Dictionary<string, object>() { { "name", "TokenDate" }, { "value", DateTime.Now.ToString() } });
		}

		public enum ResponseValues
		{
			Success,
			AditionalData,
			Message,
			Value,
			id,
			Token
		}
	}
}
