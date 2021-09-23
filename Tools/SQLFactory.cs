using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace APIAleTennis.Tools
{
	public static class SQLFactory
	{
		public static void GetSyncSQL(string masket = "SQL.{0}.sql")
		{
			var listScripts = Tools.ReadAllFile();
			foreach (var script in listScripts)
			{
				if (script != "")
				{
					var sqlExec = Tools.GetResourceFileContentAsString(string.Format(masket, script));
					var Result = SetData(sqlExec, CommandType.Text);
					if (!Result.Success)
					{
						Console.WriteLine("SyncSql: " + Result.Message);
					}
				}
			}
		}

		/// <summary>
		/// ConexionString Base de datos.
		/// </summary>
		public static string CN = "";

		/// <summary>
		/// Almacenar los ultimos Mesage de error Obtenidos.
		/// </summary>
		public static string MESSAGE = "";

		/// <summary>
		/// Metodo que permite consultar la base de datos y obtener resultados de tabla serializadas en json.
		/// </summary>
		/// <param name="CommandText">Comando a ejecutar que puede ser egun el tipo y Storage procedure o un Query.</param>
		/// <param name="CommandType">Tipo de comando a ejecutar.</param>
		/// <param name="Parameters">Lista de Parametros.</param>
		/// <param name="connectionstring">Conección a base de datos por defecto toma la configurada en el WebConfig.</param>
		/// <returns>Retorna un objeto de tipo Respondo con valores los valores solicitados a base de datos o error.</returns>
		public static Response<string> GetData(string CommandText, CommandType CommandType, List<SqlParameter> Parameters = null, string connectionstring = "")
		{
			Response<string> ReturnSerialice = new Response<string>();
			try
			{
				var result = GetProcessData(true, CommandText, CommandType, Parameters, connectionstring);
				if (result.GetType().Equals(typeof(DataTable)))
				{
					ReturnSerialice.Value = Newtonsoft.Json.JsonConvert.SerializeObject(result);
					ReturnSerialice.Success = true;
				}
				else
				{
					ReturnSerialice.Success = false;
					ReturnSerialice.Message = result.ToString();
				}
			}
			catch (Exception ex)
			{
				ReturnSerialice.Success = false;
				ReturnSerialice.Message = ex.ToString();
			}
			return ReturnSerialice;
		}

		/// <summary>
		/// Metodo que permite consultar la base de datos y obtener resultados de booleano por ser procesos de inserción, actualización o delete.
		/// </summary>
		/// <param name="CommandText">Comando a ejecutar que puede ser egun el tipo y Storage procedure o un Query.</param>
		/// <param name="CommandType">Tipo de comando a ejecutar.</param>
		/// <param name="Parameters">Lista de Parametros.</param>
		/// <param name="connectionstring">Conección a base de datos por defecto toma la configurada en el WebConfig.</param>
		/// <returns>Retorna un objeto de tipo Respondo con valores los valores solicitados a base de datos o error.</returns>
		public static Response<int> SetData(string CommandText, CommandType CommandType, List<SqlParameter> Parameters = null, string connectionstring = "", bool ReturnID = false)
		{
			Response<int> ReturnSerialice = new Response<int>();
			try
			{
				var result = GetProcessData(false, CommandText, CommandType, Parameters, connectionstring, ReturnID);
				if (ReturnID)
				{
					ReturnSerialice.Value = Convert.ToInt32(result);
					ReturnSerialice.id = result.ToString();
					ReturnSerialice.Success = true;
				}

				if (result.GetType().Equals(typeof(int)))
				{
					ReturnSerialice.Value = Convert.ToInt32(result);
					ReturnSerialice.Success = true;
				}
				ReturnSerialice.Message = MESSAGE;
			}
			catch (Exception ex)
			{
				ReturnSerialice.Success = false;
				ReturnSerialice.Message = ex.ToString();
			}
			return ReturnSerialice;
		}

		/// <summary>
		/// Metodo que permite consultar la base de datos y obtener resultados de objeto datatable o un booleano por ser procesos de inserción, actualización o delete.
		/// </summary>
		/// <param name="Isdatatable">Booleano que indica si retornada un datatable o boolean.</param>
		/// <param name="CommandText">Comando a ejecutar que puede ser egun el tipo y Storage procedure o un Query.</param>
		/// <param name="CommandType">Tipo de comando a ejecutar.</param>
		/// <param name="Parameters">Lista de Parametros.</param>
		/// <param name="connectionstring">Conección a base de datos por defecto toma la configurada en el WebConfig.</param>
		/// <returns>Retorna un objeto de tipo Respondo con valores los valores solicitados a base de datos o error.</returns>
		public static object GetProcessData(bool Isdatatable, string CommandText, CommandType CommandType, List<SqlParameter> Parameters = null, string connectionstring = "", bool ReturnID = false)
		{
			SqlConnection connection = null;
			try
			{
				if (connectionstring == "")
				{
					connectionstring = CN;
				}
				SqlCommand command = new SqlCommand();
				connection = new SqlConnection(connectionstring);
				connection.Open();
				command.Connection = connection;
				command.CommandType = CommandType;
				command.CommandText = CommandText;
				command.Parameters.Clear();
				if (Parameters != null)
				{
					command.Parameters.AddRange(Parameters.ToArray());
				}
				if (Isdatatable)
				{
					SqlDataAdapter adapter = new SqlDataAdapter(command);
					DataSet ds = new DataSet();
					adapter.Fill(ds);
					connection.Close();
					return ds.Tables[0];
				}
				else if (ReturnID)
				{
					return command.ExecuteScalar();
				}
				else
				{
					return command.ExecuteNonQuery();
				}
			}
			catch (Exception ex)
			{
				MESSAGE = ex.Message;
				return ex;
			}
			finally
			{
				if (connection != null)
				{
					connection.Close();
				}
			}
		}

	}
}