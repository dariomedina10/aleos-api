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
	public class TrainingExercisesProcess
	{
		public static string ID { get; set; }   = @"@trainingexercises_id";
		public static string BASE { get; set; } = @"TRAININGEXERCISES";

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
		internal static object Process(TrainingExercisesRequest trainingExercises)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = trainingExercises.trainingexercises_id },
				new SqlParameter() { ParameterName = "@name" , SqlDbType = SqlDbType.VarChar, Value = trainingExercises.name },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = trainingExercises.description },
				new SqlParameter() { ParameterName = "@image" , SqlDbType = SqlDbType.VarChar, Value = trainingExercises.image },
				new SqlParameter() { ParameterName = "@video" , SqlDbType = SqlDbType.VarChar, Value = trainingExercises.video },
				new SqlParameter() { ParameterName = "@active" , SqlDbType = SqlDbType.Bit, Value = trainingExercises.active },
			
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}
	}
}