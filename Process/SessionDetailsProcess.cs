using APIAleTennis.Models;
using APIAleTennis.Tools;
using Newtonsoft.Json;
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
	public class SessionDetailsProcess
	{

		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@session_details_id";
			BASE = "SESSION_DETAILS";
		}

		/// <summary>
		/// Guarda o Actualiza session details.
		/// </summary>
		/// <returns></returns>
		internal static object Process(SessionDetailsRequest sessionDetails)
		{
			Response<int> resp = new Response<int>();
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@session_id" , SqlDbType = SqlDbType.VarChar, Value = sessionDetails.session_id }
			};
			var dataSession = SQLFactory.GetData(string.Format(@"SESSION_VALID_ID", BASE), CommandType.StoredProcedure, Param);
			int sessionStatus = 0;
			if (dataSession.Success)
			{
				if (dataSession.Value != "[]")
				{
					var sessionValue = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(dataSession.Value)?.FirstOrDefault();
					if (sessionValue != null)
						sessionStatus = Convert.ToInt32(sessionValue["idTrainingSessionStatus"]);
				}
			}
			if (sessionStatus == 0)
			{
				//No existe session con el id indicado
				resp.Message = "This training session does not exist";
				return resp;
			}
			if (sessionStatus != 2)
			{
				//No se puede actualizar valores fuera del estatus en proceso
				resp.Message = "You can only modify assistance in status in process";
				return resp;
			}
			if (sessionDetails.Justify && sessionDetails.Note == "")
			{
				//No se puede justificar sin colocar un detalle o nota.
				resp.Message = "If you justify the absence, you must place a note indicating the reason.";
				return resp;
			}
			Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = sessionDetails.session_detials_id },
				new SqlParameter() { ParameterName = "@session_id" , SqlDbType = SqlDbType.VarChar, Value = sessionDetails.session_id },
				new SqlParameter() { ParameterName = "@Player_id" , SqlDbType = SqlDbType.Int, Value = sessionDetails.IdPlayer },
				new SqlParameter() { ParameterName = "@note" , SqlDbType = SqlDbType.VarChar, Value = sessionDetails.Note },
				new SqlParameter() { ParameterName = "@Asistence" , SqlDbType = SqlDbType.Bit, Value = sessionDetails.Asistence },
				new SqlParameter() { ParameterName = "@Justify" , SqlDbType = SqlDbType.Bit, Value = sessionDetails.Justify },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}



	}
}