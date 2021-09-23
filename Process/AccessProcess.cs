
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using APIAleTennis.Tools;

namespace APIAleTennis.Process
{
	public static class AccessProcess
	{


		internal static object GetId(string id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@IDRole" , SqlDbType = SqlDbType.Int , Value = id},
			};
			return SQLFactory.GetData(@"ROLES_ACCESS", CommandType.StoredProcedure, Param);
		}
	}
}