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
	[RoutePrefix("api/location")]
	public class LocationController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var result = LocationProcess.GetAll();
			return Ok(result);
		}

		[HttpPost]
		public IHttpActionResult Post(LocationRequest Location)
		{
			var result = LocationProcess.Process(Location);
			return Ok(result);
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteLocation(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteLocation(int id)
		{
			return Ok(LocationProcess.Delete(id));
		}

		[HttpGet]
		[Route("active")]
		public IHttpActionResult GetLocationActive()
		{
			return Ok(LocationProcess.GetLocationActive());
		}
	}
}
