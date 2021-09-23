using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ZohoSync;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// login controller class for authenticate users
	/// </summary>
	[AllowAnonymous]
	[RoutePrefix("api/sync")]
	public class SyncController : ApiController
	{
		[HttpGet]
		[Route("customers")]
		public IHttpActionResult Customers()
		{
			try
			{
				return Ok(SyncProcess.GetSyncCustomers());
			}
			catch (Exception ex)
			{
				return Ok(ex);
			}
		}

		[HttpGet]
		[Route("contacts/{idCustomer}")]
		public IHttpActionResult Contacts(string idCustomer)
		{
			try
			{
				SyncProcess.GetSyncPlayers();
				return Ok(true);
			}
			catch (Exception ex)
			{
				return Ok(false);
			}
		}
	}
}
