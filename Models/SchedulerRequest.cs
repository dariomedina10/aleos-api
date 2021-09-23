using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class SchedulerRequest
	{
		public int id_scheduler { get; set; }
		public string description { get; set; }

		public string nickName { get; set; }
		public string weekSelect { get; set; }
		public TimeSpan TimeIni { get; set; }
		public TimeSpan TimeEnd { get; set; }
		public int idUserCoach { get; set; }
		public int idLocation { get; set; }
		public bool active { get; set; }
	}
}