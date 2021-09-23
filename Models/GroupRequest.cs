using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class GroupRequest
	{
		public int group_id { get; set; }
		public string name { get; set; }
		public string description { get; set; }

		public string nickName { get; set; }
		public bool active { get; set; }

		public int level_id { get; set; }
		public int season_id { get; set; }
		public int trainingPlan_id { get; set; }

		public int group_type { get; set; }
	}
}