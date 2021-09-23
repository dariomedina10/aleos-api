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
	[RoutePrefix("api/credictplan")]
	public class CredictPlanController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var result = CredictPlanProcess.GetAll();
			return Ok(result);
		}

		[HttpPost]
		public IHttpActionResult Post(CredictPlanRequest credictPlan)
		{
			var result = CredictPlanProcess.Process(credictPlan);
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
			return Ok(CredictPlanProcess.Delete(id));
		}
	}
}
