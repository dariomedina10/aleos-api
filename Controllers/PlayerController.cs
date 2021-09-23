using APIAleTennis.Models;
using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// player controller class para obtener datos de jugadores
	/// </summary>
	[Authorize]
	[RoutePrefix("api/player")]
	public class PlayerController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(PlayerProcess.GetAll());
		}

		[HttpPost]
		public IHttpActionResult Post(PlayerRequest Player)
		{
			return Ok(PlayerProcess.Process(Player));
		}

		[HttpGet]
		[Route("{id_player}/groups")]
		public IHttpActionResult GetPlayers(int id_player)
		{
			return Ok(PlayerProcess.GetGroups(id_player));
		}

		[HttpGet]
		[Route("{id_player}/groups_not_player")]
		public IHttpActionResult GetGroupNotPlayers(int id_player)
		{
			return Ok(PlayerProcess.GetPlayersNotGroup(id_player));
		}
	}
}
