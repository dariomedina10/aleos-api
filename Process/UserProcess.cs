using APIAleTennis.Tools;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace APIAleTennis.Process
{
	public static class UserProcess
	{
		/// <summary>
		/// Metodo que permite inicio de session.
		/// </summary>
		/// <param name="username">Usuario o correo</param>
		/// <param name="password">Contraseña Encriptada</param>
		/// <returns>Datos de Usuario en JSON</returns>
		public static Response<string> GetUserLogin(string username, string password)
		{
			string pass = Seguridad.Base64Encode(password);
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@user_username" , SqlDbType = SqlDbType.VarChar, Value = username },
				new SqlParameter() { ParameterName = "@user_password" , SqlDbType = SqlDbType.VarChar, Value = pass     }
			};
			return SQLFactory.GetData(@"USER_SELECT_LOGIN_BASIC", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Metodo para buscar un usuario por su correo.
		/// </summary>
		/// <param name="email">Contraseña Encriptada</param>
		/// <returns>Datos de Usuario en JSON</returns>
		public static Response<string> GetSearchUserByEmail(string email)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@user_email" , SqlDbType = SqlDbType.VarChar, Value = email },
			};
			return SQLFactory.GetData(@"USER_SEARCH_BY_EMAIL", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Metodo para generar codigo de activacion para recuperar la contraseña.
		/// </summary>
		/// <param name="ConfirmationData">Contraseña Encriptada</param>
		/// <param name="link">Contraseña Encriptada</param>
		/// <returns>Datos de Forgot Password en JSON</returns>
		public static Response<string> RegisterCodeForgotPassword(Dictionary<string, object> ConfirmationData, string Link)
		{
			Response<string> result = new Response<string>();
			//Actualizar contaseña
			string TICKS = DateTime.Now.Ticks.ToString();
			List<SqlParameter> Param = new List<SqlParameter>() {
					new SqlParameter() { ParameterName = "@user_id", SqlDbType = SqlDbType.VarChar, Value = ConfirmationData["idUser"].ToString() },
					new SqlParameter() { ParameterName = "@code", SqlDbType = SqlDbType.VarChar, Value = TICKS },
				};
			//Validaciones a nivel de servidor.
			var ResponseConfirmatioKey = SQLFactory.SetData("ACTIVATION_PROCESS", CommandType.StoredProcedure, Param);
			if (!ResponseConfirmatioKey.Success)
			{
				result.Success = false;
				result.Message = string.Format("An error occurred when trying to change password: ({0})", ResponseConfirmatioKey.Message);
				return result;
			}
			string NameUser = string.Format(@"Hello {0} {1}", ConfirmationData["userFirstname"].ToString(), ConfirmationData["userLastname"].ToString());
			var sendEmail = UtilsProcess.SendMailGeneric(@"Forgot your password", @"You have requested to recover your password, click on the following link within 2 hours of this request to recover the password.", ConfirmationData["userEmail"].ToString() ,Link+TICKS, "RECOVER PASSWORD", NameUser);
			if (!sendEmail.Success)
			{
				result.Success = false;
				result.Message = string.Format("Sorry, an error occurred while sending email: ({0})", sendEmail.Message);
				return result;
			}
			result.Success = true;
			result.Message = "An email has been sent, Check your email to get your new password.";
			return result;
		}

		internal static Response<string> GetSearchUserByCode(string code)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = "@code" , SqlDbType = SqlDbType.VarChar, Value = code },
			};
			return SQLFactory.GetData(@"USER_SEARCH_BY_CODE", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Metodo para generar codigo de activacion para recuperar la contraseña.
		/// </summary>
		/// <param name="ConfirmationData">Contraseña Encriptada</param>
		/// <param name="link">Contraseña Encriptada</param>
		/// <returns>Datos de Forgot Password en JSON</returns>
		public static Response<string> ValidationCodeForgotPassword(Dictionary<string, object> ConfirmationData, string code)
		{
			Response<string> result = new Response<string>();
			//Validar codigo de olvido su contraseña
			List<SqlParameter> Param = new List<SqlParameter>() {
					new SqlParameter() { ParameterName = "@user_id", SqlDbType = SqlDbType.VarChar, Value = ConfirmationData["idUser"].ToString() },
					new SqlParameter() { ParameterName = "@code", SqlDbType = SqlDbType.VarChar, Value = code },
				};
			//Validaciones a nivel de servidor.
			var ResponseConfirmatioKey = SQLFactory.GetData("ACTIVATION_PROCESS", CommandType.StoredProcedure, Param);
			if (!ResponseConfirmatioKey.Success)
			{
				result.Success = false;
				result.Message = string.Format("An error occurred when trying to change password: ({0})", ResponseConfirmatioKey.Message);
				return result;
			}
			result.Success = true;
			result.Message = "Enter a new password.";
			return result;
		}

		/// <summary>
		/// Eliminar code de la base de datos.
		/// </summary>
		/// <param name="code">codigo</param>
		/// <returns>Datos de Forgot Password en JSON</returns>
		public static Response<int> DeleteCode(string code)
		{
			List<SqlParameter> Param = new List<SqlParameter>() {
				new SqlParameter() { ParameterName = "@code", SqlDbType = SqlDbType.VarChar, Value = code },
			};
			return SQLFactory.SetData("ACTIVATION_DELETE", CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Metodo para generar codigo de activacion para recuperar la contraseña.
		/// </summary>
		/// <param name="ConfirmationData">Contraseña Encriptada</param>
		/// <param name="NewPassword">Contraseña Encriptada</param>
		/// <returns>Datos de Forgot Password en JSON</returns>
		public static Response<string> ChangePassword(Dictionary<string, object> ConfirmationData, string NewPassword)
		{
			Response<string> result = new Response<string>();
			//Actualizar contaseña
			string passEncrip = Seguridad.Base64Encode(NewPassword);
			List<SqlParameter> Param = new List<SqlParameter>() {
					new SqlParameter() { ParameterName = "@user_id", SqlDbType = SqlDbType.VarChar, Value = ConfirmationData["idUser"].ToString() },
					new SqlParameter() { ParameterName = "@new_password", SqlDbType = SqlDbType.VarChar, Value = passEncrip },
				};
			//Validaciones a nivel de servidor.
			var ResponseConfirmatioKey = SQLFactory.SetData("USER_CHANCE_PASSWORD", CommandType.StoredProcedure, Param);
			if (!ResponseConfirmatioKey.Success)
			{
				result.Success = false;
				result.Message = string.Format("An error occurred when trying to change password: ({0})", ResponseConfirmatioKey.Message);
				return result;
			}
			result.Success = true;
			result.Message = "Your password has been changed.";
			return result;
		}
	}
}