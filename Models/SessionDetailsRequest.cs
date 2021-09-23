using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class SessionDetailsRequest
	{
		
		public int session_detials_id { get; set; }
		[JsonIgnore]
		public string session_id { get; set; }
		public int IdPlayer { get; set; }
		public string Note { get; set; }
		public bool Asistence { get; set; }
		public bool Justify { get; set; }
	}
}