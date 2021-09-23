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
	[RoutePrefix("api/customers")]
	public class CustomersController : ApiController
	{
		[HttpGet]
		public IHttpActionResult GetId(int id)
		{
			var customerFake = "customer-fake";
			return Ok(customerFake);
		}

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			var result = CustomerProcess.GetAll();
			return Ok(result);
		}

		[HttpGet]
		[Route("role/{id_role}")]
		public IHttpActionResult GetCustomerByRole(int id_role)
		{
			return Ok(CustomerProcess.GetCustomerByRole(id_role));
		}

		[HttpPost]
		public IHttpActionResult Post(CustomerRequest customer)
		{
			var result = CustomerProcess.Process(customer);
			return Ok(result);
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteCustomer(id));
		}


		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteCustomer(int id)
		{
			return Ok(CustomerProcess.Delete(id));
		}
	}
}
