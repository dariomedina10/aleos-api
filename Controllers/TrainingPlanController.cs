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
	[RoutePrefix("api/trainingplan")]
	public class TrainingPlanController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(TrainingPlanProcess.GetAll());
		}

		[HttpGet]
		[Route("active")]
		public IHttpActionResult GetCycleActives()
		{
			return Ok(TrainingPlanProcess.GetAll(false));
		}

		[HttpPost]
		public IHttpActionResult Post(TrainingPlanRequest trainingPlan)
		{
			var result = TrainingPlanProcess.Process(trainingPlan);
			return Ok(result);
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteCreditPlan(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteCreditPlan(int id)
		{
			return Ok(TrainingPlanProcess.Delete(id));
		}

		[HttpGet]
		[Route("{trainingPlan}/cycle")]
		public IHttpActionResult GetCycle(int trainingPlan)
		{
			return GetCycle(trainingPlan, 0);
		}

		[HttpGet]
		[Route("{trainingPlan}/cycle/{cycleParent}")]
		public IHttpActionResult GetCycle(int trainingPlan, int cycleParent)
		{
			return Ok(TrainingPlanProcess.GetCycle(trainingPlan, cycleParent));
		}
	}
}
