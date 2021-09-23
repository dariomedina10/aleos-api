using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIAleTennis.Models
{
	public class RangeDateRequest
	{
		public DateTime date_ini { get; set; }
		public DateTime date_end { get; set; }
	}
}