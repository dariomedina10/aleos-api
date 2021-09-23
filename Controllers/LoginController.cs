using APIAleTennis.Models;
using APIAleTennis.Process;
using APIAleTennis.Tools;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// login controller class for authenticate users
	/// </summary>
	[AllowAnonymous]
	[RoutePrefix("api/login")]
	public class LoginController : ApiController
	{
		[HttpGet]
		[Route("echoping")]
		public IHttpActionResult EchoPing()
		{
			return Ok(true);
		}

		[HttpGet]
		[Route("echouser")]
		public IHttpActionResult EchoUser()
		{
			var identity = Thread.CurrentPrincipal.Identity;
			return Ok($" IPrincipal-user: {identity.Name} - IsAuthenticated: {identity.IsAuthenticated}");
		}

		[HttpPost]
		[Route("authenticate")]
		public IHttpActionResult Authenticate(LoginRequest login)
		{
			if (login == null)
				throw new HttpResponseException(HttpStatusCode.BadRequest);
			var resultLogin = UserProcess.GetUserLogin(login.Username, login.Password);
			if (resultLogin.Success)
			{
				if (resultLogin.Value != "[]")
				{
					resultLogin.Token = TokenGenerator.GenerateTokenJwt(login.Username);
					return Ok(resultLogin);
				}
				return Unauthorized();
			}
			else
			{
				return Unauthorized();
			}
		}

		[HttpPost]
		[Route("forgotpassword")]
		public IHttpActionResult Forgotpassword(ForgotPasswordRequest forgotpassword)
		{
			Response<string> result = new Response<string>();
			result.Success = false;
			result.Message = @"Email is not registered on our servers.";
			if (forgotpassword == null)
				throw new HttpResponseException(HttpStatusCode.BadRequest);
			var RespondeUser = UserProcess.GetSearchUserByEmail(forgotpassword.Email);
			if (RespondeUser.Success == true && RespondeUser.Value != "[]")
			{
				//Deserialización de los datos.
				Dictionary<string, object> ConfirmationData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(RespondeUser.Value).FirstOrDefault();
				result = UserProcess.RegisterCodeForgotPassword(ConfirmationData, forgotpassword.Link);
				return Ok(result);
			}
			return Ok(result);
		}

		[HttpPost]
		[Route("validatecode")]
		public IHttpActionResult validatecode(ValidateCodeRequest ValidateCode)
		{
			Response<string> result = new Response<string>();
			result.Success = false;
			result.Message = @"Code validate is not registered, active or expire on our servers.";
			if (ValidateCode == null)
				throw new HttpResponseException(HttpStatusCode.BadRequest);
			var resultData = UserProcess.GetSearchUserByCode(ValidateCode.code);
			if (resultData.Success == true && resultData.Value != "[]")
				return Ok(UserProcess.GetSearchUserByCode(ValidateCode.code));
			return Ok(result);
		}


		[HttpPost]
		[Route("changepassword")]
		public IHttpActionResult changepassword(ChangePasswordRequest changepassword)
		{
			Response<string> result = new Response<string>();
			result.Success = false;
			result.Message = @"Your passwords don't match.";
			if (changepassword == null)
				throw new HttpResponseException(HttpStatusCode.BadRequest);
			if (changepassword.newPassword != changepassword.newPasswordRepeat)
				return Ok(result);
			
			Response<string> RespondeUser = new Response<string>();
			if (changepassword.code != null)
			{
				RespondeUser = UserProcess.GetSearchUserByCode(changepassword.code);
				if (RespondeUser.Success == true && RespondeUser.Value != "[]")
				{
					//Inactiva code de recuperación.
					var resultDelete = UserProcess.DeleteCode(changepassword.code);
					if (!resultDelete.Success)
						return Ok(resultDelete);
				}
				else
					result.Message = @"Code validate is not registered, active or expire on our servers.";
			}
			else
			{
				RespondeUser = UserProcess.GetUserLogin(changepassword.email, changepassword.oldPassword);
				result.Message = @"An unexpected error occurred when trying to change password, please try again.";
			}
			if (RespondeUser.Success == true && RespondeUser.Value != "[]")
			{
				//Deserialización de los datos.
				Dictionary<string, object> ConfirmationData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Dictionary<string, object>>>(RespondeUser.Value).FirstOrDefault();
				result = UserProcess.ChangePassword(ConfirmationData, changepassword.newPassword);
				return Ok(result);
			}
			else
			{
				return Ok(result);
			}
		}
	}
}
