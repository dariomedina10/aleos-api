using APIAleTennis.Models;
using APIAleTennis.Tools;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace APIAleTennis.Process
{
	/// <summary>
	/// Clase para procesar la tabla level (Niveles de jugadores)
	/// </summary>
	public class AccountProcess
	{
		public static string ID { get; set; } = @"@account_id";
		public static string IDPLAYER { get; set; } = @"@player_id";
		public static string BASE { get; set; } = @"ACCOUNT";

		/// <summary>
		/// Obtiene un valor de la configuracion.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static string GetId(string id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = @"@idProvider" , SqlDbType = SqlDbType.NVarChar, Value = id }
			};
			var result = SQLFactory.GetData(string.Format(@"{0}_ID", BASE), CommandType.StoredProcedure, Param);
			if (result.Success)
			{
				var list = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(result.Value);
				if (list.Count > 0)
					return list.FirstOrDefault()["idAccount"]?.ToString();
			}
			return "";
		}

		/// <summary>
		/// Obtiene todos los niveles de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(string.Format(@"{0}_ALL", BASE), CommandType.StoredProcedure);
		}

		/// <summary>
		/// Elimina un nivel.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object Delete(int id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id },
			};
			return SQLFactory.SetData(string.Format(@"{0}_DELETE", BASE), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Guarda o Actualiza una configuración.
		/// </summary>
		/// <returns></returns>
		internal static object Process(AccountRequest account)
		{
			if (account.phone == null)
				account.phone = "";
			if (account.mobile == null)
				account.mobile = account.phone;
			if (account.email == null)
				account.email = "";
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = account.account_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = account.name },
				new SqlParameter() { ParameterName = "@email" , SqlDbType = SqlDbType.VarChar, Value = account.email },
				new SqlParameter() { ParameterName = "@credits" , SqlDbType = SqlDbType.Int, Value = account.credits },
				new SqlParameter() { ParameterName = "@idProvider" , SqlDbType = SqlDbType.VarChar, Value = account.idProvider },
				new SqlParameter() { ParameterName = "@phone" , SqlDbType = SqlDbType.VarChar, Value = account.phone },
				new SqlParameter() { ParameterName = "@mobile" , SqlDbType = SqlDbType.VarChar, Value = account.mobile},
				new SqlParameter() { ParameterName = "@date" , SqlDbType = SqlDbType.DateTime, Value = account.create},
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		
		internal static object GetAccountPlayer(int id_player)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = IDPLAYER , SqlDbType = SqlDbType.Int, Value = id_player },
			};
			return SQLFactory.GetData(string.Format(@"PLAYER_{0}_DETAILS", BASE), CommandType.StoredProcedure, Param);
		}


	}
}