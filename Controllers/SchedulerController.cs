using APIAleTennis.Models;
using APIAleTennis.Process;
using APIAleTennis.Tools;
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
	[RoutePrefix("api/scheduler")]
	public class SchedulerController : ApiController
	{

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(SchedulerProcess.GetAll());
		}

		[HttpPost]
		public IHttpActionResult Post(SchedulerRequest scheduler)
		{
			return Ok(SchedulerProcess.Process(scheduler));
		}

		[HttpPost]
		[Route("valid")]
		public IHttpActionResult SheduleValid(SchedulerRequest scheduler)
		{
			return Ok(SchedulerProcess.SheduleValid(scheduler));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteScheduler(int id)
		{
			return Ok(SchedulerProcess.Delete(id));
		}

		[HttpGet]
		[Route("filter/{filter}/{id}/{iduser}")]
		public IHttpActionResult GetListSchedulerFilter(string filter, int id, int iduser)
		{
			return Ok(SchedulerProcess.GetListSchedulerFilter(filter, id, iduser));
		}

	}
}
