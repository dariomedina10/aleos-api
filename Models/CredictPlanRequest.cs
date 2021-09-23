using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class CredictPlanRequest
	{
		public int credictplan_id { get; set; }
		public string name { get; set; }
		public int credict_plan { get; set; }
		public string id_plan_provider { get; set; }
		public string provider_name { get; set; }
	}
}