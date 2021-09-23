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
	public class SchedulerProcess
	{

		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@scheduler_id";
			BASE = "SCHEDULER";
		}

		/// <summary>
		/// Obtener todo.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(string.Format(@"{0}_ALL", BASE), CommandType.StoredProcedure);
		}

		/// <summary>
		/// Guarda o Actualiza.
		/// </summary>
		/// <returns></returns>
		internal static object Process(SchedulerRequest scheduler)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = scheduler.id_scheduler },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = scheduler.description },
				new SqlParameter() { ParameterName = "@weekSelect" , SqlDbType = SqlDbType.VarChar, Value = scheduler.weekSelect },
				new SqlParameter() { ParameterName = "@time_ini" , SqlDbType = SqlDbType.Time, Value = scheduler.TimeIni },
				new SqlParameter() { ParameterName = "@time_end" , SqlDbType = SqlDbType.Time, Value = scheduler.TimeEnd },
				new SqlParameter() { ParameterName = "@user_id" , SqlDbType = SqlDbType.Int, Value = scheduler.idUserCoach },
				new SqlParameter() { ParameterName = "@location_id" , SqlDbType = SqlDbType.Int, Value = scheduler.idLocation },
				new SqlParameter() { ParameterName = "@active" , SqlDbType = SqlDbType.Bit, Value = scheduler.active },
				new SqlParameter() { ParameterName = "@nick" , SqlDbType = SqlDbType.VarChar, Value = scheduler.nickName },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object SheduleValid(SchedulerRequest scheduler)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = scheduler.id_scheduler },
				new SqlParameter() { ParameterName = "@description" , SqlDbType = SqlDbType.VarChar, Value = scheduler.description },
				new SqlParameter() { ParameterName = "@weekSelect" , SqlDbType = SqlDbType.VarChar, Value = scheduler.weekSelect },
				new SqlParameter() { ParameterName = "@time_ini" , SqlDbType = SqlDbType.Time, Value = scheduler.TimeIni.Add(TimeSpan.FromSeconds(1)) },
				new SqlParameter() { ParameterName = "@time_end" , SqlDbType = SqlDbType.Time, Value = scheduler.TimeEnd.Add(TimeSpan.FromSeconds(-1)) },
				new SqlParameter() { ParameterName = "@user_id" , SqlDbType = SqlDbType.Int, Value = scheduler.idUserCoach },
				new SqlParameter() { ParameterName = "@location_id" , SqlDbType = SqlDbType.Int, Value = scheduler.idLocation },
				new SqlParameter() { ParameterName = "@active" , SqlDbType = SqlDbType.Bit, Value = scheduler.active },
			};
			return SQLFactory.GetData(string.Format(@"{0}_VALID", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetListSchedulerFilter(string filter, int id, int iduser)
		{
			Response<string> responseDefault = new Response<string>();
			try
			{
				List<SqlParameter> Param = new List<SqlParameter>()
				{
					new SqlParameter() { ParameterName = "@filter", SqlDbType = SqlDbType.Int, Value = id },
					new SqlParameter() { ParameterName = "@iduser", SqlDbType = SqlDbType.Int, Value = iduser }
				};
				return SQLFactory.GetData(string.Format("SCHEDULER_BY_{0}", filter.ToUpper()), CommandType.StoredProcedure, Param);
			}
			catch (Exception ex)
			{
				responseDefault.Message = ex.ToString();
				responseDefault.Value = "Filter no valid";
				return responseDefault;
			}
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


	}
}