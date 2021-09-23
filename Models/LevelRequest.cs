using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class LevelRequest
	{
		public int level_id { get; set; }
		public string name { get; set; }
		public string description { get; set; }
	}
}