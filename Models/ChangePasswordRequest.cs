using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class ChangePasswordRequest
	{
		public string code { get; set; }

		public string id_user { get; set; }

		public string username { get; set; }

		public string email { get; set; }

		[JsonIgnore]
		public string oldPassword { get; set; }
		
		public string newPassword { get; set; }

		public string newPasswordRepeat { get; set; }
	}
}