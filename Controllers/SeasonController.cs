using APIAleTennis.Models;
using APIAleTennis.Process;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// customer controller class for testing security token
	/// </summary>
	[Authorize]
	[RoutePrefix("api/season")]
	public class SeasonController : ApiController
	{
		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(SeasonProcess.GetAll());
		}

		[HttpPost]
		public IHttpActionResult Post(SeasonRequest season)
		{
			return Ok(SeasonProcess.Process(season));
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteSeason(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteSeason(int id)
		{
			return Ok(SeasonProcess.Delete(id));
		}

		[HttpGet]
		[Route("{id_season}/groups")]
		public IHttpActionResult GetGroups(int id_season)
		{
			return Ok(SeasonProcess.GetGroups(id_season));
		}
	}
}
