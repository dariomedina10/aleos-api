
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using APIAleTennis.Tools;
using Newtonsoft.Json;

namespace APIAleTennis.Process
{
	public static class DashboardProcess
	{


		internal static object GetId(string id)
		{
			Response<Dictionary<string, object>> dataDashboard = new Response<Dictionary<string, object>>();
			dataDashboard.Value = new Dictionary<string, object>();
			var PlayersData = SQLFactory.GetData(@"DASHBOARD_PLAYER", CommandType.StoredProcedure);
			if (PlayersData.Success)
				dataDashboard.Value.Add("Players", PlayersData.Value);
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = @"@idUser" , SqlDbType = SqlDbType.Int, Value = id }
			};
			var TrainingSessionData = SQLFactory.GetData(@"DASHBOARD_TRAINING_SESSION", CommandType.StoredProcedure, Param);
			if (TrainingSessionData.Success)
				dataDashboard.Value.Add("TrainingSession", TrainingSessionData.Value);
			List<SqlParameter> ParamCount = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = @"@idUser" , SqlDbType = SqlDbType.Int, Value = id }
			};
			var CountData = SQLFactory.GetData(@"DASHBOARD_COUNT", CommandType.StoredProcedure, ParamCount);
			if (CountData.Success)
			{
				var counts = JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(CountData.Value)?.FirstOrDefault();
				foreach (var itemCount in counts)
				{
					dataDashboard.Value.Add(itemCount.Key, itemCount.Value);
				}
			}
			if (!dataDashboard.Value.ContainsKey("Players"))
				dataDashboard.Value.Add("Players", "[]");
			if (!dataDashboard.Value.ContainsKey("TrainingSession"))
				dataDashboard.Value.Add("TrainingSession", "[]");
			dataDashboard.Success = true;
			return dataDashboard;
		}
	}
}