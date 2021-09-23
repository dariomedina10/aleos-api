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
	public class LocationProcess
	{


		/// <summary>
		/// Obtiene todos los niveles de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(@"LOCATION_ALL", CommandType.StoredProcedure);
		}

		/// <summary>
		/// Elimina un nivel.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object Delete(int id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@location_id" , SqlDbType = SqlDbType.Int, Value = id },
			};
			return SQLFactory.SetData(@"LOCATION_DELETE", CommandType.StoredProcedure, Param);
		}

		internal static object GetLocationActive()
		{
			return SQLFactory.GetData(@"LOCATION_ACTIVE", CommandType.StoredProcedure);
		}

		/// <summary>
		/// Guarda o Actualiza un nivel.
		/// </summary>
		/// <returns></returns>
		internal static object Process(LocationRequest location)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@location_id"			, SqlDbType = SqlDbType.Int		, Value = location.location_id },
				new SqlParameter() { ParameterName = "@name"				, SqlDbType = SqlDbType.VarChar	, Value = location.name },
				new SqlParameter() { ParameterName = "@nick"				, SqlDbType = SqlDbType.VarChar	, Value = location.nick },
				new SqlParameter() { ParameterName = "@image"				, SqlDbType = SqlDbType.VarChar	, Value = location.image },
				new SqlParameter() { ParameterName = "@active"				, SqlDbType = SqlDbType.Bit		, Value = location.active },
				new SqlParameter() { ParameterName = "@location_id_parent"	, SqlDbType = SqlDbType.Int		, Value = location.location_id_parent },
				new SqlParameter() { ParameterName = "@address"				, SqlDbType = SqlDbType.VarChar	, Value = location.address },
				new SqlParameter() { ParameterName = "@geo"					, SqlDbType = SqlDbType.VarChar	, Value = location.geo },
				new SqlParameter() { ParameterName = "@color"				, SqlDbType = SqlDbType.VarChar	, Value = location.Color },
			};
			return SQLFactory.SetData(@"LOCATION_PROCESS", CommandType.StoredProcedure, Param);
		}
	}
}