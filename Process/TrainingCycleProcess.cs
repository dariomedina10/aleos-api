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
	/// Clase para procesar la tabla actividades de entrenamiento
	/// </summary>
	public class TrainingCycleProcess
	{
		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@trainingcycle_id";
			BASE = "TRAININGCYCLE";
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
		/// Guarda o Actualiza season.
		/// </summary>
		/// <returns></returns>
		internal static object Process(TrainingCycleRequest trainingCycle)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = trainingCycle.trainingcycle_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = trainingCycle.name },
				new SqlParameter() { ParameterName = "@iterate" , SqlDbType = SqlDbType.Int, Value = trainingCycle.iterate },
				new SqlParameter() { ParameterName = "@idTrainingCycle" , SqlDbType = SqlDbType.Int, Value = trainingCycle.idcycleparent },
				new SqlParameter() { ParameterName = "@idtrainingplan" , SqlDbType = SqlDbType.Int, Value = trainingCycle.idtraininplan },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetActivity(int idCycle)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@trainingcycle_id" , SqlDbType = SqlDbType.Int, Value = idCycle },
			};
			return SQLFactory.GetData(string.Format(@"TRAININGACTIVITY_ALL"), CommandType.StoredProcedure, Param);
		}
	}
}