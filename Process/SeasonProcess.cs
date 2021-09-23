using APIAleTennis.Models;
using APIAleTennis.Tools;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APIAleTennis.Process
{
	/// <summary>
	/// Clase para procesar la tabla level (Niveles de jugadores)
	/// </summary>
	public class SeasonProcess
	{

		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@season_id";
			BASE = "SEASON";
		}

		/// <summary>
		/// Obtiene todos los datos.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll(List<SqlParameter> param = null)
		{
			return SQLFactory.GetData(string.Format(@"{0}_ALL", BASE), CommandType.StoredProcedure, param);
		}

		/// <summary>
		/// Guarda o Actualiza season.
		/// </summary>
		/// <returns></returns>
		internal static object Process(SeasonRequest season)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = season.season_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = season.name },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = season.description },
				new SqlParameter() { ParameterName = "@start" , SqlDbType = SqlDbType.DateTime, Value = season.start },
				new SqlParameter() { ParameterName = "@end" , SqlDbType = SqlDbType.DateTime, Value = season.end },
				new SqlParameter() { ParameterName = "@active" , SqlDbType = SqlDbType.Bit, Value = season.active },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
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
		/// Obtener grupos que pertenecen a una temporada.
		/// </summary>
		/// <param name="id_season">Identificador de la temporada</param>
		/// <returns></returns>
		internal static object GetGroups(int id_season)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@season_id" , SqlDbType = SqlDbType.Int, Value = id_season },
			};
			return SQLFactory.GetData(String.Format(@"{0}_GROUP", BASE), CommandType.StoredProcedure, Param);
		}
	}
}