using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class CustomerRequest
	{
		public int id { get; set; }
		public string DNI { get; set; }
		public string Email { get; set; }
		public string Phone { get; set; }
		public string FirsName { get; set; }
		public string LastName { get; set; }
		public string UserName { get; set; }
		public string Avatar { get; set; }
		public int idRole { get; set; }
		public string Password { get; set; }

		public string nickName { get; set; }
		public string Color { get; set; }
	}
}