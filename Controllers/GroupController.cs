using APIAleTennis.Models;
using APIAleTennis.Process;
using APIAleTennis.Tools;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// customer controller class for testing security token
	/// </summary>
	[Authorize]
	[RoutePrefix("api/group")]
	public class GroupController : ApiController
	{

		[HttpPost]
		public IHttpActionResult Post(GroupRequest group)
		{
			Response<int> result = GroupProcess.Process(group) as Response<int>;
			if (result.Value == -1)
			{
				result.Success = false;
				result.Message = "If the group already has an active training session, it cannot be updated.";
			}
			return Ok(result);
		}

		[HttpGet]
		[Route("types")]
		public IHttpActionResult GetGroupTypes()
		{
			return Ok(GroupProcess.GetGroupTypes());
		}

		[HttpGet]
		[Route("{id_group}/player")]
		public IHttpActionResult GetPlayers(int id_group)
		{
			return Ok(GroupProcess.GetPlayers(id_group));
		}

		[HttpGet]
		[Route("{id_group}/player_not_group")]
		public IHttpActionResult GetPlayersNotGroup(int id_group)
		{
			return Ok(GroupProcess.GetPlayersNotGroup(id_group));
		}

		[HttpGet]
		[Route("scheduler_not_group")]
		public IHttpActionResult GetShedulerNotGroup()
		{
			return Ok(GroupProcess.GetShedulerNotGroup());
		}

		[HttpPost]
		[Route("{id_group}/player")]
		public IHttpActionResult SetPlayers(int id_group, GroupPlayerRequest groupPlayer)
		{
			return Ok(GroupProcess.SetPlayers(id_group, groupPlayer));
		}

		[HttpGet]
		[Route("{id_group}/delete")]
		public IHttpActionResult GetDelete(int id_group)
		{
			return Ok(GroupProcess.Delete(id_group));
		}

		[HttpGet]
		[Route("{id_group}/player/{id_player}/delete")]
		public IHttpActionResult DeletePlayer(int id_group, int id_player)
		{
			return Ok(GroupProcess.DeletePlayer(id_group, id_player));
		}

		[HttpGet]
		[Route("{id_group}/scheduler")]
		public IHttpActionResult GetSchedulerGroup(int id_group)
		{
			return Ok(GroupProcess.GetSchedulerGroup(id_group));
		}

		[HttpGet]
		[Route("{id_group}/scheduler/{id_scheduler}")]
		public IHttpActionResult SetGroupScheduler(int id_group, int id_scheduler)
		{
			return Ok(GroupProcess.SetGroupScheduler(id_group, id_scheduler));
		}

		[HttpGet]
		[Route("{id_group}/scheduler/{id_scheduler}/delete")]
		public IHttpActionResult DeleteGroupScheduler(int id_group, int id_scheduler)
		{
			return Ok(GroupProcess.DeleteGroupScheduler(id_group, id_scheduler));
		}

		[HttpPost]
		[Route("{id_group}/player/filter")]
		public IHttpActionResult GetFilterType(int id_group, FilterRequest filter)
		{
			return Ok(GroupProcess.GetFilterType(id_group, filter));
		}
	}
}
