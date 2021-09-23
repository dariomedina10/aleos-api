using APIAleTennis.Process;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
    [Authorize]
    [RoutePrefix("api/Account")]
    public class AccountController : ApiController
    {

        [HttpGet]
        public IHttpActionResult GetAll()
        {
            var result = AccountProcess.GetAll();
            return Ok(result);
        }

        [HttpGet]
        public IHttpActionResult GetId(string id)
        {
            return Ok(AccountProcess.GetId(id));
        }

        [HttpGet]
        [Route("{id_player}")]
        public IHttpActionResult GetPlayers(int id_player)
        {
            return Ok(AccountProcess.GetAccountPlayer(id_player));
        }
    }
}
