using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class ConfigRequest
	{
		[JsonIgnore]
		public int config_id { get; set; }
		public string name { get; set; }
		[JsonIgnore]
		public string description { get; set; }
		public string value { get; set; }
		[JsonIgnore]
		public string group { get; set; }
	}
}