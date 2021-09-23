using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class TrainingCycleRequest
	{
		public int trainingcycle_id { get; set; }
		public string name { get; set; }
		public int iterate { get; set; }
		public int idcycleparent { get; set; }
		public int idtraininplan { get; set; }
	}
}