using APIAleTennis.Tools;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace APIAleTennis.Process
{
	public static class RoleProcess
	{
		/// <summary>
		/// Obtiene todos los roles del sistema.
		/// </summary>
		/// <returns></returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(@"ROLES_ALL", CommandType.StoredProcedure);
		}
	}
}