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
	public class CustomerProcess
	{
		/// <summary>
		/// Obtiene todos los roles del sistema.
		/// </summary>
		/// <returns></returns>
		internal static object GetAll()
		{
			return SQLFactory.GetData(@"USER_ALL", CommandType.StoredProcedure);
		}

		/// <summary>
		/// Obtiene todos los roles del sistema.
		/// </summary>
		/// <returns></returns>
		internal static object Delete(int id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@user_id" , SqlDbType = SqlDbType.Int, Value = id },
			};
			return SQLFactory.SetData(@"USER_DELETE", CommandType.StoredProcedure, Param);
		}

		internal static object GetCustomerByRole(int id_role)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@role_id" , SqlDbType = SqlDbType.Int, Value = id_role },
			};
			return SQLFactory.GetData(@"USER_BY_ROLE", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Obtiene todos los roles del sistema.
		/// </summary>
		/// <returns></returns>
		internal static object Process(CustomerRequest customer)
		{
			string newPassword = UtilsProcess.GenerarPassword(10);
			if (customer.id == 0)
				customer.Password = Seguridad.Base64Encode(newPassword);
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@user_id" , SqlDbType = SqlDbType.Int, Value = customer.id },
				new SqlParameter() { ParameterName = "@user_dni" , SqlDbType = SqlDbType.VarChar, Value = customer.DNI },
				new SqlParameter() { ParameterName = "@user_phone" , SqlDbType = SqlDbType.VarChar, Value = customer.Phone },
				new SqlParameter() { ParameterName = "@user_email" , SqlDbType = SqlDbType.VarChar, Value = customer.Email },
				new SqlParameter() { ParameterName = "@user_firsname" , SqlDbType = SqlDbType.VarChar, Value = customer.FirsName },
				new SqlParameter() { ParameterName = "@user_lastname" , SqlDbType = SqlDbType.VarChar, Value = customer.LastName },
				new SqlParameter() { ParameterName = "@user_username" , SqlDbType = SqlDbType.VarChar, Value = customer.UserName },
				new SqlParameter() { ParameterName = "@user_avatar" , SqlDbType = SqlDbType.VarChar, Value = customer.Avatar },
				new SqlParameter() { ParameterName = "@user_role" , SqlDbType = SqlDbType.VarChar, Value = customer.idRole },
				new SqlParameter() { ParameterName = "@user_password" , SqlDbType = SqlDbType.VarChar, Value = customer.Password },
				new SqlParameter() { ParameterName = "@user_color" , SqlDbType = SqlDbType.VarChar, Value = customer.Color },
				new SqlParameter() { ParameterName = "@user_nick" , SqlDbType = SqlDbType.VarChar, Value = customer.nickName },
			};
			var result = SQLFactory.SetData(@"USER_PROCESS", CommandType.StoredProcedure, Param);
			if (result.Success)
			{
				if (result.Value > 0)
				{
					if (customer.id == 0)
					{
						string NameUser = string.Format(@"Hello {0} {1}", customer.FirsName, customer.LastName);
						var sendEmail = UtilsProcess.SendMailGeneric(@"Create User ALE OS APP", @"Welcome, A new account has been created in ALE OS APP with the username " + customer.UserName + ", and a security password has been sent, change it to a more personalized one.", customer.Email, "", "Password: " + newPassword, NameUser);
						if (!sendEmail.Success)
						{
							result.Success = false;
							result.Message = string.Format("Sorry, an error occurred while sending email: ({0})", sendEmail.Message);
							return result;
						}
					}
				}
			}
			return result;
		}
	}
}