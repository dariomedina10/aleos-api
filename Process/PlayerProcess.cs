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
	public class PlayerProcess
	{
		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";
		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@player_id";
			BASE = "PLAYER";
		}

		/// <summary>
		/// Obtiene un valor de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static string GetId(string id)
		{
			int id_config = 0;
			try
			{
				id_config = Convert.ToInt32(id);
			}
			catch (Exception ex)
			{
				id_config = 0;
			}
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = @"@ID" , SqlDbType = SqlDbType.Int, Value = id_config },
				new SqlParameter() { ParameterName = @"@KEY" , SqlDbType = SqlDbType.NVarChar, Value = id },
			};
			var result = SQLFactory.GetData(string.Format(@"{0}_KEY", BASE), CommandType.StoredProcedure, Param);
			if (result.Success)
			{
				var list = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(result.Value);
				if (list.Count > 0)
					return list.FirstOrDefault()["confValue"]?.ToString();
			}
			return "";
		}


		/// <summary>
		/// Obtiene todos los jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(string.Format(@"{0}_ALL", BASE), CommandType.StoredProcedure);
		}

		/// <summary>
		/// Eliminar.
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
		/// Guarda o Actualiza una jugadores.
		/// </summary>
		/// <returns></returns>
		internal static object Process(PlayerRequest player)
		{
			if (player.email == null)
				player.email = "";
			if (player.phone == null)
				player.phone = "";
			if (player.gender == null)
				player.gender = "";
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = player.player_id },
				new SqlParameter() { ParameterName = "@fistName" , SqlDbType = SqlDbType.VarChar, Value = player.fistName },
				new SqlParameter() { ParameterName = "@lastName" , SqlDbType = SqlDbType.VarChar, Value = player.LastName },
				new SqlParameter() { ParameterName = "@image" , SqlDbType = SqlDbType.VarChar, Value = player.image },
				new SqlParameter() { ParameterName = "@email" , SqlDbType = SqlDbType.VarChar, Value = player.email },
				new SqlParameter() { ParameterName = "@phone" , SqlDbType = SqlDbType.VarChar, Value = player.phone },
				new SqlParameter() { ParameterName = "@birthDate" , SqlDbType = SqlDbType.Date, Value = player.birthDate },
				new SqlParameter() { ParameterName = "@gender" , SqlDbType = SqlDbType.VarChar, Value = player.gender },
				new SqlParameter() { ParameterName = "@idProvider" , SqlDbType = SqlDbType.VarChar, Value = player.idProvider },
				new SqlParameter() { ParameterName = "@nameSecundaryContact" , SqlDbType = SqlDbType.VarChar, Value = player.nameSecundaryContact },
				new SqlParameter() { ParameterName = "@phoneSecundaryContact" , SqlDbType = SqlDbType.VarChar, Value = player.phoneSecundaryContact },
				new SqlParameter() { ParameterName = "@idLevel" , SqlDbType = SqlDbType.Int, Value = player.idLevel },
				new SqlParameter() { ParameterName = "@idAccount" , SqlDbType = SqlDbType.NVarChar, Value = player.idAccount },
				new SqlParameter() { ParameterName = "@idLocation" , SqlDbType = SqlDbType.Int, Value = player.idLocation },
				new SqlParameter() { ParameterName = "@date" , SqlDbType = SqlDbType.DateTime, Value = player.create},
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Obtener grupos  perteneciente a un jugador.
		/// </summary>
		/// <param name="id_group">Identificador delgrupo</param>
		/// <returns></returns>
		internal static object GetGroups(int id_player)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID, SqlDbType = SqlDbType.Int, Value = id_player },
			};
			return SQLFactory.GetData(string.Format(@"{0}_GROUP", BASE), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Obtener los jugadores que no perteneciente a un grupo.
		/// </summary>
		/// <param name="id_group">Identificador delgrupo</param>
		/// <returns></returns>
		internal static object GetPlayersNotGroup(int id_player)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_player },
			};
			return SQLFactory.GetData(string.Format(@"GROUP_NOT_{0}", BASE), CommandType.StoredProcedure, Param);
		}
	}
}