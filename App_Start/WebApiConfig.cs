using APIAleTennis.Controllers;
using APIAleTennis.Process;
using APIAleTennis.Properties;
using APIAleTennis.Tools;
using System.Configuration;
using System.Web.Http;

namespace APIAleTennis
{
	public static class WebApiConfig
	{
		public static void Register(HttpConfiguration config)
		{
			// Web API configuration and services
			string Ambiente = (Settings.Default.Ambiente == "DB-QUALITY") ? Settings.Default.Ambiente : "DBRELEASE";
#if DEBUG
			SQLFactory.CN = ConfigurationManager.ConnectionStrings["DB-DEBUG"].ConnectionString;
#else
			SQLFactory.CN = ConfigurationManager.ConnectionStrings[Ambiente].ConnectionString;; 
#endif
			SQLFactory.GetSyncSQL("{0}");

			// Web API routes
			TrainingCycleProcess.BaseProcess();
			TrainingActivityProcess.BaseProcess();
			GroupProcess.BaseProcess();
			PlayerProcess.BaseProcess();
			SessionProcess.BaseProcess();
			SessionDetailsProcess.BaseProcess();
			SeasonProcess.BaseProcess();
			SchedulerProcess.BaseProcess(); 
			ReportsProcess.BaseProcess();

			config.MapHttpAttributeRoutes();
			config.MessageHandlers.Add(new TokenValidationHandler());
			config.Routes.MapHttpRoute(
				name: "DefaultApi",
				routeTemplate: "api/{controller}/{id}",
				defaults: new { id = RouteParameter.Optional }
			);
		}
	}
}
