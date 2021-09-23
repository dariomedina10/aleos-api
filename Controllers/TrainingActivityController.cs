using APIAleTennis.Models;
using APIAleTennis.Process;
using System.Web.Http;

namespace APIAleTennis.Controllers
{
	/// <summary>
	/// customer controller class for testing security token
	/// </summary>
	[Authorize]
	[RoutePrefix("api/trainingactivity")]
	public class TrainingActivityController : ApiController
    {

		[HttpGet]
		public IHttpActionResult GetAll()
		{
			return Ok(TrainingActivityProcess.GetAll());
		}

		[HttpPost]
		public IHttpActionResult Post(TrainingActivityRequest trainingActivity)
		{
			return Ok(TrainingActivityProcess.Process(trainingActivity));
		}

		[HttpDelete]
		public IHttpActionResult Delete(int id)
		{
			return Ok(DeleteTrainingActivity(id));
		}

		[HttpGet]
		[Route("{id}/delete")]
		public IHttpActionResult DeleteTrainingActivity(int id)
		{
			return Ok(TrainingActivityProcess.Delete(id));
		}
	}
}
