using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// roles controller class
	/// </summary>
	[Authorize]
	[RoutePrefix("api/roles")]
	public class RolesController : ApiController
	{
		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var resultLogin = RoleProcess.GetAll();
			return Ok(resultLogin);
		}
	}
}
