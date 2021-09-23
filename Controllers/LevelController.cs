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
	/// <summary>
	/// customer controller class for testing security token
	/// </summary>
	[Authorize]
	[RoutePrefix("api/level")]
	public class LevelController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var result = LevelProcess.GetAll();
			return Ok(result);
		}

		[HttpPost]
		public IHttpActionResult Post(LevelRequest level)
		{
			var result = LevelProcess.Process(level);
			return Ok(result);
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteLevel(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteLevel(int id)
		{
			return Ok(LevelProcess.Delete(id));
		}
	}
}
