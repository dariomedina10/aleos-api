using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class PlayerRequest
	{
		public int player_id { get; set; }
		public string fistName { get; set; }
		public string LastName { get; set; }
		public string image { get; set; }
		public string email { get; set; }
		public string phone { get; set; }
		public DateTime birthDate { get; set; }
		public string gender { get; set; }
		public string idProvider { get; set; }
		public string nameSecundaryContact { get; set; }
		public string phoneSecundaryContact { get; set; }
		public int idLevel { get; set; }
		public string idAccount { get; set; }
		public int idLocation { get; set; }

		public DateTime create { get; set; }
	}
}