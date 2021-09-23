using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class TrainingPlanRequest
	{
		public int trainingplan_id { get; set; }
		public string name { get; set; }
		public bool active { get; set; }
	}
}