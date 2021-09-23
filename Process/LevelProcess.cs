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
	public class LevelProcess
	{
		/// <summary>
		/// Obtiene todos los niveles de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(@"LEVEL_ALL", CommandType.StoredProcedure);
		}

		/// <summary>
		/// Elimina un nivel.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object Delete(int id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@level_id" , SqlDbType = SqlDbType.Int, Value = id },
			};
			return SQLFactory.SetData(@"LEVEL_DELETE", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Guarda o Actualiza un nivel.
		/// </summary>
		/// <returns></returns>
		internal static object Process(LevelRequest level)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@level_id" , SqlDbType = SqlDbType.Int, Value = level.level_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = level.name },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = level.description },
			};
			return SQLFactory.SetData(@"LEVEL_PROCESS", CommandType.StoredProcedure, Param);
		}
	}
}