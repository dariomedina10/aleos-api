using APIAleTennis.Models;
using APIAleTennis.Tools;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using ZohoSync;

namespace APIAleTennis.Process
{
	public static class SyncProcess
	{
		public static ZohoSyncProcess sync;

		/// <summary>
		/// Metodo que obtiene el token o actualiza en caso de ser necesario
		/// </summary>
		/// <returns>Retorna un token valido</returns>
		public async static Task<string> GetAccessToken()
		{
			string Token = ConfigProcess.GetValue(@"AccessToken");
			string RefreshToken = ConfigProcess.GetValue(@"RefreshToken");
			DateTime Date = Convert.ToDateTime(ConfigProcess.GetValue(@"TokenDate"), CultureInfo.CreateSpecificCulture("en-US"));
			string ClientID = ConfigProcess.GetValue(@"ClientID");
			string ClientSecrect = ConfigProcess.GetValue(@"ClientSecret");
			string RedirectURL = ConfigProcess.GetValue(@"RedirectURL");
			sync = new ZohoSyncProcess(ClientID, ClientSecrect, RedirectURL);
			TimeSpan result = Convert.ToDateTime(DateTime.Now, CultureInfo.CreateSpecificCulture("en-US")).Subtract(Date);
			if (result.TotalHours > 1)
			{
				string newToken = await sync.RefreshToken(RefreshToken);
				if (newToken != null)
				{
					var DicValues = JsonConvert.DeserializeObject<Dictionary<string, object>>(newToken);
					if (DicValues.ContainsKey(@"access_token"))
					{
						Token = DicValues[@"access_token"].ToString();
						ConfigProcess.Update(@"AccessToken", Token);
						ConfigProcess.Update(@"TokenDate", DateTime.Now.ToString("MM/dd/yyyy hh:MM tt", CultureInfo.CreateSpecificCulture("en-US")));
					}
				}

			}
			return Token;
		}

		/// <summary>
		/// Obtener todos los usuarios
		/// </summary>
		public async static Task<object> GetSyncUsers()
		{
			string Token = await GetAccessToken();
			var listCustomers = sync.GetActiveUsers(Token).Result;
			object result = null;
			foreach (var customers in listCustomers)
			{
				AccountRequest account = new AccountRequest();
				account.account_id = 0;
				if (customers.ContainsKey(@"customer_id"))
					account.idProvider = customers[@"customer_id"].ToString();
				if (customers.ContainsKey(@"customer_name"))
					account.name = customers[@"customer_name"].ToString();
				if (customers.ContainsKey(@"email"))
					account.email = customers[@"email"].ToString();
				account.credits = 0;
				result = AccountProcess.Process(account);
			}
			return result;
		}

		/// <summary>
		/// Obtener todos los usuarios
		/// </summary>
		public static object GetSyncCustomers()
		{
			Dictionary<string, object> Result = new Dictionary<string, object>();
			Result.Add("Syncronizando", true);
			Task.Run(async () =>
			{
				object resultAccount = null;
				object resultPlayer = null;
				SQLFactory.GetSyncSQL("{0}");
				string Token = await GetAccessToken();
				var listAcounts = sync.GetAccounts(Token).Result;
				if (listAcounts != null)
				{

					foreach (var customers in listAcounts)
					{
						AccountRequest account = new AccountRequest();
						account.account_id = 0;
						account.mobile = "";
						account.phone = "";
						account.email = "";
						if (customers.ContainsKey(@"id"))
							account.idProvider = customers[@"id"].ToString();
						if (customers.ContainsKey(@"Account_Name"))
							account.name = customers[@"Account_Name"].ToString();
						if (customers.ContainsKey(@"Email"))
							account.email = customers[@"Email"]?.ToString();
						if (customers.ContainsKey(@"Phone"))
						{
							var phone = customers[@"Phone"]?.ToString();
							if (account.phone != null)
								account.phone = phone;
						}
						if (customers.ContainsKey(@"Secondary_Phone"))
						{
							var phone = customers[@"Secondary_Phone"]?.ToString();
							if (account.mobile != null)
								account.mobile = phone;
						}

						account.credits = 0;
						account.create = Convert.ToDateTime(customers[@"Created_Time"]);
						resultAccount = AccountProcess.Process(account);
					}
				}

				var listContacts = sync.GetContacs(Token).Result;
				if (listContacts != null)
				{
					foreach (var contacs in listContacts)
					{

						if (contacs.ContainsKey(@"Account_Name"))
						{
							Dictionary<string, object> Account = JsonConvert.DeserializeObject<Dictionary<string, object>>(contacs[@"Account_Name"]?.ToString());
							if (Account != null)
							{
								PlayerRequest player = new PlayerRequest();
								player.idAccount = Account[@"id"].ToString();
								player.player_id = 0;
								player.email = "";
								player.phone = "";
								if (contacs.ContainsKey(@"id"))
									player.idProvider = contacs[@"id"].ToString();
								if (contacs.ContainsKey(@"First_Name"))
									player.fistName = contacs[@"First_Name"]?.ToString();
								if (contacs.ContainsKey(@"Last_Name"))
									player.LastName = contacs[@"Last_Name"]?.ToString();
								if (contacs.ContainsKey(@"Secondary_Email"))
								{
									var email = contacs[@"Secondary_Email"]?.ToString();
									if (player.email != null)
										player.email = email;
								}
								if (contacs.ContainsKey(@"Mobile"))
								{
									var phone = contacs[@"Mobile"]?.ToString();
									if (player.phone != null)
										player.phone = phone;
								}
								player.image = @"";
								if (contacs.ContainsKey(@"Birth_Date"))
									player.birthDate = Convert.ToDateTime(contacs[@"Birth_Date"]);
								if (contacs.ContainsKey(@"Gender"))
									player.gender = contacs[@"Gender"]?.ToString();
								player.nameSecundaryContact = @"";
								player.phoneSecundaryContact = @"";
								player.idLocation = 0;
								player.idLevel = 0;
								player.create = Convert.ToDateTime(contacs[@"Created_Time"]);
								resultPlayer = PlayerProcess.Process(player);
							}
						}
					}
				}
				Result.Add("Token", Token);
				Result.Add("Accounts", listAcounts.Count);
				Result.Add("AccountsResult", resultAccount);
				Result.Add("Players", listContacts.Count);
				Result.Add("PlayersResult", resultPlayer);
			});

			return Result;
		}

		/// <summary>
		/// Objeter los contactos de cada uno de los usuarios.
		/// </summary>
		public async static void GetSyncPlayers()
		{
			Response<string> result = AccountProcess.GetAll() as Response<string>;
			if (result.Success)
			{
				List<Dictionary<string, object>> listAccounts = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(result.Value);
				string Token = await GetAccessToken();
				foreach (var account in listAccounts)
				{
					var listContacs = sync.GetActiveContacs(account[@"idProvider"].ToString(), Token).Result;
					if (listContacs != null)
					{
						foreach (var contacs in listContacs)
						{
							PlayerRequest player = new PlayerRequest();
							player.player_id = 0;
							if (contacs.ContainsKey(@"contactperson_id"))
								player.idProvider = contacs[@"contactperson_id"]?.ToString();
							if (contacs.ContainsKey(@"first_name"))
								player.fistName = contacs[@"first_name"]?.ToString();
							if (contacs.ContainsKey(@"last_name"))
								player.LastName = contacs[@"last_name"]?.ToString();
							if (contacs.ContainsKey(@"email"))
								player.email = contacs[@"email"]?.ToString();
							if (contacs.ContainsKey(@"mobile"))
								player.phone = contacs[@"mobile"]?.ToString();
							player.image = @"";
							player.birthDate = DateTime.Now;
							player.gender = @"";
							player.nameSecundaryContact = @"";
							player.phoneSecundaryContact = @"";
							player.idAccount = account[@"idAccount"].ToString();
							player.idLocation = 0;
							player.idLevel = 0;
							PlayerProcess.Process(player);
						}
					}
				}
			}
		}

		/// <summary>
		/// Objeter los contactos de cada uno de los usuarios.
		/// </summary>
		public async static void GetSyncPlayersById(string idCustomer)
		{

			string Token = await GetAccessToken();
			var IdAccount = AccountProcess.GetId(idCustomer);
			var listContacs = sync.GetActiveContacs(idCustomer, Token).Result;
			if (listContacs != null)
			{
				foreach (var contacs in listContacs)
				{
					PlayerRequest player = new PlayerRequest();
					player.player_id = 0;
					if (contacs.ContainsKey(@"contactperson_id"))
						player.idProvider = contacs[@"contactperson_id"]?.ToString();
					if (contacs.ContainsKey(@"first_name"))
						player.fistName = contacs[@"first_name"]?.ToString();
					if (contacs.ContainsKey(@"last_name"))
						player.LastName = contacs[@"last_name"]?.ToString();
					if (contacs.ContainsKey(@"email"))
						player.email = contacs[@"email"]?.ToString();
					if (contacs.ContainsKey(@"mobile"))
						player.phone = contacs[@"mobile"]?.ToString();
					player.image = @"";
					player.birthDate = DateTime.Now;
					player.gender = @"";
					player.nameSecundaryContact = @"";
					player.phoneSecundaryContact = @"";
					player.idAccount = IdAccount.ToString();
					player.idLocation = 0;
					player.idLevel = 0;
					PlayerProcess.Process(player);
				}
			}


		}

		/// <summary>
		/// Objeter la lista de creditos de cada usuario.
		/// </summary>
		public static void GetSyncCreditsTemp()
		{

		}
	}
}