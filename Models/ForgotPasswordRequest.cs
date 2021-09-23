using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class ForgotPasswordRequest
	{
		[JsonIgnore]
		public string Password { get; set; }
		[JsonIgnore]
		public string Code { get; set; }

		public string Email { get; set; }
		
		public string Link { get; set; }
	}
}