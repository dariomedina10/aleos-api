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
	public class ConfigProcess
	{
		public static string ID { get; set; } = @"@config_id";
		public static string BASE { get; set; } = @"CONFIG";

		public static List<Dictionary<string, object>> LIST_CONFIG { get; set; } = null;

		/// <summary>
		/// Obtiene un valor de la configuracion.
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
		/// Obtiene un valor de la configuracion.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static string GetValue(string key)
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

		/// <summary>
		/// Obtiene todos los niveles de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			var result = SQLFactory.GetData(string.Format(@"{0}_ALL", BASE), CommandType.StoredProcedure);
			if (result.Success)
				LIST_CONFIG = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(result.Value);
			return result;
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
		internal static object Process(ConfigRequest config)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = config.config_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = config.name },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = config.description },
				new SqlParameter() { ParameterName = "@value" , SqlDbType = SqlDbType.VarChar, Value = config.value },
				new SqlParameter() { ParameterName = "@group" , SqlDbType = SqlDbType.VarChar, Value = config.group },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}


		/// <summary>
		/// Actualiza una configuración.
		/// </summary>
		/// <returns></returns>
		internal static object Update(string key, string value)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = key },
				new SqlParameter() { ParameterName = "@value" , SqlDbType = SqlDbType.VarChar, Value = value },
			};
			return SQLFactory.SetData(string.Format(@"{0}_UPDATE", BASE), CommandType.StoredProcedure, Param);
		}
	}
}