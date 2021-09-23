using APIAleTennis.Models;
using APIAleTennis.Tools;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace APIAleTennis.Process
{
	/// <summary>
	/// Clase para procesar la tabla actividades de entrenamiento
	/// </summary>
	public class TrainingActivityProcess
	{
		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@trainingactivity_id";
			BASE = "TRAININGACTIVITY";
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
		internal static object Process(TrainingActivityRequest trainingActivity)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = trainingActivity.trainingactivity_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = trainingActivity.name },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = trainingActivity.description },
				new SqlParameter() { ParameterName = "@idcycle" , SqlDbType = SqlDbType.DateTime, Value = trainingActivity.idtrainingcycle },
				new SqlParameter() { ParameterName = "@idexercises" , SqlDbType = SqlDbType.DateTime, Value = trainingActivity.idtrainingexercises },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

	}
}