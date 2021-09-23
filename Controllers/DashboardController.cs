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
	[RoutePrefix("api/Dashboard")]
	public class DashboardController : ApiController
	{

		[HttpGet]
		public IHttpActionResult GetId(string id)
		{
			return Ok(DashboardProcess.GetId(id));
		}
	}
}
