using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class TrainingActivityRequest
	{
		public int trainingactivity_id { get; set; }
		public string name { get; set; }
		public string description { get; set; }
		public int idtrainingcycle { get; set; }
		public int idtrainingexercises { get; set; }
	}
}