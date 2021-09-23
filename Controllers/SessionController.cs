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
	[Authorize]
	[RoutePrefix("api/session")]
	public class SessionController : ApiController
	{
		[HttpGet]
		public IHttpActionResult GetId(string id)
		{
			return Ok(SessionProcess.GetId(id));
		}

		[HttpPost]
		public IHttpActionResult Post(SessionRequest session)
		{
			return Ok(SessionProcess.Process(session));
		}


		[HttpGet]
		[Route("{status_id}/status")]
		public IHttpActionResult getSessionStatus(int status_id)
		{
			return Ok(SessionProcess.getSessionStatus(status_id));
		}

		[HttpGet]
		[Route("{session_id}/details")]
		public IHttpActionResult getSessionDetails(string session_id)
		{
			return Ok(SessionProcess.getSessionDetails(session_id));
		}

		[HttpPost]
		[Route("{session_id}/details")]
		public IHttpActionResult getSessionDetails(string session_id, SessionDetailsRequest sessionDetails)
		{
			sessionDetails.session_id = session_id;
			return Ok(SessionDetailsProcess.Process(sessionDetails));
		}

		[HttpGet]
		[Route("{status_id}/report")]
		public IHttpActionResult getSessionReportStatus(int status_id)
		{
			return Ok(SessionProcess.getSessionReportStatus(status_id));
		}
	}
}
