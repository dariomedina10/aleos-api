using APIAleTennis.Models;
using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
    [Authorize]
    [RoutePrefix("api/reports")]
    public class ReportsController : ApiController
    {
		[HttpPost]
		[Route("class_by_player_and_type")]
		public IHttpActionResult getclass_by_player_and_type(RangeDateRequest rangeDate)
		{
			return Ok(ReportsProcess.GetClass_by_player_and_type(rangeDate));
		}

		[HttpGet]
		[Route("hour_worked_coach")]
		public IHttpActionResult GetHourt_Worked_Coach()
		{
			return Ok(ReportsProcess.GetHourt_Worked_Coach());
		}
	}
}