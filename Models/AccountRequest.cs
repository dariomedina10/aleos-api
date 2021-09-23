using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class AccountRequest
	{
		public int account_id { get; set; }
		public string name { get; set; }
		public string email { get; set; }
		public int credits { get; set; }
		public string idProvider { get; set; }

		public string phone { get; set; }

		public string mobile { get; set; }

		public DateTime create { get; set; }
	}
}