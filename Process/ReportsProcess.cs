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
	public class ReportsProcess
	{
		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";

		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@season_id";
			BASE = "REPORT";
		}

		internal static object GetClass_by_player_and_type(RangeDateRequest rangeDate)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@dateIni" , SqlDbType = SqlDbType.DateTime, Value = rangeDate.date_ini },
				new SqlParameter() { ParameterName = "@dateEnd" , SqlDbType = SqlDbType.DateTime, Value = rangeDate.date_end }
			};
			return SQLFactory.GetData(string.Format(@"{0}_SESSIONS_BY_PLAYER_AND_CLASS_TYPE", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetHourt_Worked_Coach()
		{
			//List<SqlParameter> Param = new List<SqlParameter>()
			//{
			//	new SqlParameter() { ParameterName = "@dateIni" , SqlDbType = SqlDbType.DateTime, Value = rangeDate.date_ini },
			//	new SqlParameter() { ParameterName = "@dateEnd" , SqlDbType = SqlDbType.DateTime, Value = rangeDate.date_end }
			//};
			return SQLFactory.GetData(string.Format(@"{0}_HOURS_WORKED_BY_COACH", BASE), CommandType.StoredProcedure);
		}
	}
}