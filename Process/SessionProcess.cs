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
	public class SessionProcess
	{

		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@session_id";
			BASE = "SESSION";
		}

		internal static object getSessionStatus(int statusid)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@session_status_id" , SqlDbType = SqlDbType.Int, Value = statusid },
			};
			return SQLFactory.GetData(string.Format(@"{0}_STATUS_ID", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object getSessionDetails(string session_id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.VarChar, Value = session_id },
			};
			return SQLFactory.GetData(string.Format(@"{0}_DETAILS", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetId(string id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.VarChar, Value = id },
			};
			return SQLFactory.GetData(string.Format(@"{0}_PRE_ID", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object getSessionReportStatus(int status_id)
		{
			string ReportProcedure = string.Format(@"{0}_REPORT_PROCESS", BASE);
			if (status_id == 3 || status_id == 4)
				ReportProcedure = string.Format(@"{0}_REPORT_COMPLETE", BASE);
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@status_id" , SqlDbType = SqlDbType.Int, Value = status_id },
			};
			return SQLFactory.GetData(ReportProcedure, CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Obtiene todos los datos.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object GetAll(List<SqlParameter> param = null)
		{
			return SQLFactory.GetData(string.Format(@"{0}_STATUS_ID", BASE), CommandType.StoredProcedure, param);
		}

		/// <summary>
		/// Guarda o Actualiza session.
		/// </summary>
		/// <returns></returns>
		internal static object Process(SessionRequest session)
		{
			string SESSIONID = session.session_id;
			bool isExist = false;
			if (!session.session_id.StartsWith("S"))
			{
				//En este caso es una nueva session.
				SESSIONID = "S" + session.date.Ticks.ToString() + "-" + session.session_id;
				string[] data = session.session_id.Split('-');
				session.IdScheduler		= Convert.ToInt32(data[1]);
				session.IdGroup			= Convert.ToInt32(data[2]);
				session.IdLocation		= Convert.ToInt32(data[3]);
				session.IdCoachUser		= Convert.ToInt32(data[4]);
				session.IdSessionStatus = 1;
				List<SqlParameter> ParamValid = new List<SqlParameter>()
				{
					new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.VarChar, Value = SESSIONID }
				};
				var ValidSession = SQLFactory.GetData(string.Format(@"{0}_VALID_ID", BASE), CommandType.StoredProcedure, ParamValid);
				if (ValidSession.Success)
					if (ValidSession.Value != "[]")
						isExist = true;

			}
			if (!isExist)
			{
				List<SqlParameter> Param = new List<SqlParameter>()
				{
					new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.VarChar, Value = SESSIONID },
					new SqlParameter() { ParameterName = "@date" , SqlDbType = SqlDbType.DateTime, Value = session.date },
					new SqlParameter() { ParameterName = "@Group_id" , SqlDbType = SqlDbType.Int, Value = session.IdGroup },
					new SqlParameter() { ParameterName = "@Location_id" , SqlDbType = SqlDbType.Int, Value = session.IdLocation },
					new SqlParameter() { ParameterName = "@Coach_user_id" , SqlDbType = SqlDbType.Int, Value = session.IdCoachUser },
					new SqlParameter() { ParameterName = "@Scheduler_id" , SqlDbType = SqlDbType.Int, Value = session.IdScheduler },
					new SqlParameter() { ParameterName = "@note" , SqlDbType = SqlDbType.VarChar, Value = session.note },
					new SqlParameter() { ParameterName = "@Session_Status_id" , SqlDbType = SqlDbType.Int, Value = session.IdSessionStatus },
				};
				var saveSession = SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
				saveSession.id = SESSIONID;
				return saveSession;
			}
			Response<string> resp = new Response<string>();
			resp.Success = false;
			resp.id = SESSIONID;
			return resp;

		}
	
	}
}