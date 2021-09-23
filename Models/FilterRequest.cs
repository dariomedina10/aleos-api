using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class FilterRequest
	{
		//public int id_group { get; set; }
		public string type { get; set; }
		public string id_type { get; set; }
		public string search { get; set; }
	}
}