using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class LocationRequest
	{
		public int location_id { get; set; }
		public string name { get; set; }
		public string nick { get; set; }
		public string image { get; set; }
		public bool active { get; set; }
		public int location_id_parent { get; set; }
		public string address { get; set; }
		public string geo { get; set; }

		public string Color { get; set; }
	}
}