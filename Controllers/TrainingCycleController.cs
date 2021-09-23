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
	[RoutePrefix("api/trainingcycle")]
	public class TrainingCycleController : ApiController
	{

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(TrainingCycleProcess.GetAll());
		}

		[HttpPost]
		public IHttpActionResult Post(TrainingCycleRequest trainingCycle)
		{
			return Ok(TrainingCycleProcess.Process(trainingCycle));
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteTrainingCycle(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteTrainingCycle(int id)
		{
			return Ok(TrainingCycleProcess.Delete(id));
		}

		[HttpGet]
		[Route("{idCycle}/activity")]
		public IHttpActionResult GetActivity(int idCycle)
		{
			return Ok(TrainingCycleProcess.GetActivity(idCycle));
		}
	}
}
