using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class TrainingExercisesRequest
	{
		public int trainingexercises_id { get; set; }
		public string name { get; set; }
		public string description { get; set; }
		public string image { get; set; }
		public string video { get; set; }
		public bool active { get; set; }
	}
}