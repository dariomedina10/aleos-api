
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace APIAleTennis.Tools
{
	public static class Tools
	{
		private static string _fileConfig;

		public static string FileConfig
		{
			get { return _fileConfig; }
			set { _fileConfig = value; }
		}

		private static Assembly _assembly;

		public static Assembly Assenbly
		{
			get { return _assembly; }
			set { _assembly = value; }
		}


		private static Dictionary<string, object> config;

		public static Dictionary<string, object> Config
		{
			get { return config; }
			set { config = value; }
		}

		/// <summary>
		/// Leer contenido de un archivo incrustado
		/// </summary>
		/// <param name="FileName">Nombre del archivo</param>
		/// <param name="Namespace">Nmaespace Project</param>
		/// <param name="assembly">Use Assembly.GetExecutingAssembly()</param>
		/// <returns></returns>
		public static string GetResourceFileContentAsString(string FileName, string Namespace = "", Assembly assembly = null)
		{
			if (assembly != null)
				Assenbly = assembly;
			if (Assenbly == null)
				Assenbly = Assembly.GetExecutingAssembly();
			if (Namespace != "")
				Namespace = Namespace.Replace("-", "_") + ".";
			var resourceName = string.Format("{0}{1}", Namespace, FileName);
			string resource = null;
			using (Stream stream = Assenbly.GetManifestResourceStream(resourceName))
			{
				if (stream != null)
				{
					using (StreamReader reader = new StreamReader(stream))
					{
						resource = reader.ReadToEnd();
					}
				}
			}
			return resource;
		}

		/// <summary>
		/// Obtener lista de archivos de una carpeta con archivos incrustados
		/// </summary>
		/// <param name="assembly"></param>
		/// <param name="folderNameBase"></param>
		/// <param name="filter"></param>
		/// <returns></returns>
		public static string[] ReadAllFile(Assembly assembly = null, string folderNameBase = "SQL.", string filter = ".sql")
		{
			if (assembly != null)
				Assenbly = assembly;
			if (Assenbly == null)
				Assenbly = assembly = Assembly.GetExecutingAssembly();
			string folderName = string.Format("{0}.{1}", Assenbly.GetName().Name.Replace("-", "_"), folderNameBase);
			return Assenbly
				.GetManifestResourceNames()
				.Where(r => r.StartsWith(folderName) && r.EndsWith(filter))
				.ToArray();
		}



		/// <summary>
		/// Guardar configuracion
		/// </summary>
		/// <param name="saveData"></param>
		/// <param name="fileConfig"></param>
		/// <param name="assembly"></param>
		/// <returns></returns>
		public static Response<Dictionary<string, object>> SaveConfig(Dictionary<string, object> saveData, string fileConfig = "", Assembly assembly = null)
		{
			Response<Dictionary<string, object>> responseSave = new Response<Dictionary<string, object>>();
			try
			{
				if (GetTestSQL(saveData, SQLFactory.CN))
				{
					if (fileConfig != "")
						FileConfig = fileConfig;
					if (assembly == null)
						assembly = Assembly.GetExecutingAssembly();
					string RouteBase = getLocationPath(assembly);
					string PathConfigComplete = Path.Combine(RouteBase, FileConfig);
					File.WriteAllText(PathConfigComplete, JsonConvert.SerializeObject(saveData));
					responseSave = GetConfig(Path.Combine(RouteBase, FileConfig));
					responseSave.Message = "Configuracion Almacenada Exitosamente.";
					responseSave.Success = true;
				}
				else
				{
					responseSave.Message = "Se esta intentando guardar una configuración con conexion SQL no valida.";
					responseSave.Success = false;
				}
			}
			catch (Exception ex)
			{
				responseSave.Message = "Ocurrio un error al intentar almacenar Configuración";
				responseSave.Success = false;
			}
			return responseSave;
		}







		/// <summary>
		/// Devuelva la ruta de la Dll
		/// </summary>
		/// <param name="assembly"></param>
		/// <returns></returns>
		public static string getLocationPath(Assembly assembly = null)
		{
			if (assembly == null)
				assembly = Assembly.GetExecutingAssembly();
			//Remplazar valores del nombre de la dll o ejecutable
			string nameExe = (assembly.GetName().Name + ".exe");
			string nameDll = (assembly.GetName().Name + ".dll");
			string ruta = assembly.Location.Replace(nameExe, "");
			ruta = ruta.Replace(nameDll, "");
			return ruta;
		}

		/// <summary>
		/// Leer al archivo de configuracion
		/// </summary>
		/// <param name="filePath"></param>
		/// <returns></returns>
		public static Response<Dictionary<string, object>> GetConfig(string filePath)
		{
			Response<Dictionary<string, object>> responseDB = new Response<Dictionary<string, object>>();
			if (File.Exists(filePath))
			{
				string JsonConfig = File.ReadAllText(filePath);
				responseDB.Value = JsonConvert.DeserializeObject<Dictionary<string, object>>(JsonConfig);
				responseDB.Success = GetTestSQL(responseDB.Value);
				if (responseDB.Success)
					Config = responseDB.Value;
			}
			else
			{
				responseDB.Message = "No se encontro configuración registrada";
			}
			return responseDB;
		}

		public static bool GetTestSQL(Dictionary<string, object> config, string old = "")
		{

			string ConnectionString = string.Format("Server={0};Database={1};User Id={2};Password={3};",
				config[configMasterNames.Server.ToString()].ToString(),
				config[configMasterNames.DataBase.ToString()].ToString(),
				config[configMasterNames.User.ToString()].ToString(),
				config[configMasterNames.Password.ToString()].ToString()
			);
			SQLFactory.CN = ConnectionString;
			string Query = string.Format(@"SELECT 'valid SQL' AS Valid");
			var ReturnData = SQLFactory.GetData(Query, CommandType.Text);
			if (!ReturnData.Success)
				ReturnData.Message = "Conexion SQL no valida";
			if (old != "")
				SQLFactory.CN = old;
			return ReturnData.Success;
		}

	}

	enum configMasterNames
	{
		configFile,
		Server,
		DataBase,
		User,
		Password
	}
}
