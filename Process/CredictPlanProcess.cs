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
	public class CredictPlanProcess
	{
		public static string ID { get; set; }   = @"@credictplan_id";
		public static string BASE { get; set; } = @"CREDICTPLAN";

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
		/// Guarda o Actualiza un nivel.
		/// </summary>
		/// <returns></returns>
		internal static object Process(CredictPlanRequest credictPlan)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = credictPlan.credictplan_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = credictPlan.name },
				new SqlParameter() { ParameterName = "@credits" , SqlDbType = SqlDbType.Int, Value = credictPlan.credict_plan },
				new SqlParameter() { ParameterName = "@PlanProvider_id" , SqlDbType = SqlDbType.VarChar, Value = credictPlan.id_plan_provider },
				new SqlParameter() { ParameterName = "@Plan_Provider_name" , SqlDbType = SqlDbType.VarChar, Value = credictPlan.provider_name },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}
	}
}