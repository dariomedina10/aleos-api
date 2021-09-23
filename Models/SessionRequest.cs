using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class SessionRequest
	{
		public string session_id { get; set; }
		public DateTime date { get; set; }
		public int IdGroup { get; set; }
		public int IdLocation { get; set; }
		public int IdCoachUser { get; set; }
		public int IdScheduler { get; set; }
		public string note { get; set; }
		public int IdSessionStatus { get; set; }
	}
}