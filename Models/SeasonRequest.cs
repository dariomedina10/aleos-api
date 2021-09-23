using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class SeasonRequest
	{
		public int season_id { get; set; }
		public string name { get; set; }
		public string description { get; set; }
		public DateTime start { get; set; }
		public DateTime end { get; set; }
		public bool active { get; set; }
	}
}