using APIAleTennis.Models;
using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	[AllowAnonymous]
	[RoutePrefix("api/config")]
	public class ConfigController : ApiController
	{
		[HttpGet]
		public IHttpActionResult GetId(string id)
		{
			string value = ConfigProcess.GetValue(id);
			return Ok(value);
		}

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var result = ConfigProcess.GetAll();
			return Ok(result);
		}

		[HttpPost]
		[Route("update")]
		public IHttpActionResult Update(ConfigRequest config)
		{
			var result = ConfigProcess.Update(config.name, config.value);
			return Ok(result);
		}
	}
}
