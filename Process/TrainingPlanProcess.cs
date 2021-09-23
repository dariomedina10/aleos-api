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
	public class TrainingPlanProcess
	{
		public static string ID { get; set; }   = @"@trainingplan_id";
		public static string BASE { get; set; } = @"TRAININGPLAN";

		/// <summary>
		/// Obtiene todos los niveles de jugadores.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll(bool actives = true)
		{
			string TextActive = (actives) ? "ALL" : "ACTIVE";
;			return SQLFactory.GetData(string.Format(@"{0}_{1}", BASE, TextActive), CommandType.StoredProcedure);
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

		internal static object GetCycle(int trainingPlan, int cycleParent = 0)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = trainingPlan },
				new SqlParameter() { ParameterName = "@trainingcycle_id_parent" , SqlDbType = SqlDbType.Int, Value = cycleParent },
			};
			return SQLFactory.GetData(string.Format(@"TRAININGCYCLE_ALL"), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Guarda o Actualiza un nivel.
		/// </summary>
		/// <returns></returns>
		internal static object Process(TrainingPlanRequest trainingPlan)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = trainingPlan.trainingplan_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = trainingPlan.name },
				new SqlParameter() { ParameterName = "@active" , SqlDbType = SqlDbType.Bit, Value = trainingPlan.active },
			
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}
	}
}