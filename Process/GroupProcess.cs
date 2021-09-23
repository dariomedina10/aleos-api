using APIAleTennis.Models;
using APIAleTennis.Tools;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace APIAleTennis.Process
{
	/// <summary>
	/// Clase para procesar la tabla level (Niveles de jugadores)
	/// </summary>
	public class GroupProcess
	{

		public static string ID { get; set; } = @"";
		public static string BASE { get; set; } = @"";
		/// <summary>
		/// Establecer valores base
		/// </summary>
		public static void BaseProcess()
		{
			ID = "@group_id";
			BASE = "GROUP";
		}

		internal static object GetGroupTypes()
		{
			return SQLFactory.GetData(string.Format(@"{0}TYPE_ALL", BASE), CommandType.StoredProcedure);
		}

		/// <summary>
		/// Guarda o Actualiza season.
		/// </summary>
		/// <returns></returns>
		internal static object Process(GroupRequest group)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID ,					SqlDbType = SqlDbType.Int,		Value = group.group_id			},
				new SqlParameter() { ParameterName = "@name" ,				SqlDbType = SqlDbType.VarChar,	Value = group.name				},
				new SqlParameter() { ParameterName = "@description" ,		SqlDbType = SqlDbType.VarChar,	Value = group.description		},
				new SqlParameter() { ParameterName = "@level_id" ,			SqlDbType = SqlDbType.Int,		Value = group.level_id			},
				new SqlParameter() { ParameterName = "@season_id" ,			SqlDbType = SqlDbType.Int,		Value = group.season_id			},
				new SqlParameter() { ParameterName = "@trainingPlan_id" ,	SqlDbType = SqlDbType.Int,		Value = group.trainingPlan_id	},
				new SqlParameter() { ParameterName = "@active" ,			SqlDbType = SqlDbType.Bit,		Value = group.active			},
				new SqlParameter() { ParameterName = "@group_type" ,		SqlDbType = SqlDbType.Int,		Value = group.group_type		},
				new SqlParameter() { ParameterName = "@nick" ,				SqlDbType = SqlDbType.VarChar,	Value = group.nickName },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PROCESS",			BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetShedulerNotGroup()
		{
			return SQLFactory.GetData(@"SCHEDULER_NOT_GROUP", CommandType.StoredProcedure);
		}

		internal static object GetPlayersNotGroup(int id_group)
		{
List<		SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group },
			};
			return SQLFactory.GetData(@"PLAYER_NOT_GROUP", CommandType.StoredProcedure, Param);
		}

		internal static object SetGroupScheduler(int id_group, int id_scheduler)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group },
				new SqlParameter() { ParameterName = "@id_scheduler" , SqlDbType = SqlDbType.Int, Value = id_scheduler },
			};
			return SQLFactory.SetData(string.Format(@"{0}_SCHEDULER_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetFilterType(int id_group, FilterRequest filter)
		{
			string procedure = "PLAYER_NOT_GROUP";
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group }
			};
			switch (filter.type)
			{
				case "Group":
					procedure = "PLAYER_NOT_GROUP_BY_GROUP";
					Param.Add(new SqlParameter() { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = filter.search });
					Param.Add(new SqlParameter() { ParameterName = "@group_Id_filter", SqlDbType = SqlDbType.Int, Value = filter.id_type });
					break;
				case "Location":
					procedure = "PLAYER_NOT_GROUP_BY_LOC";
					Param.Add(new SqlParameter() { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = filter.search });
					Param.Add(new SqlParameter() { ParameterName = "@locationId", SqlDbType = SqlDbType.Int, Value = filter.id_type });
					break;
				case "Old":
					procedure = "PLAYER_NOT_GROUP_BY_OLD";
					Param.Add(new SqlParameter() { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = filter.search });
					Param.Add(new SqlParameter() { ParameterName = "@old", SqlDbType = SqlDbType.Int, Value = filter.id_type });
					break;
				case "Level":
					procedure = "PLAYER_NOT_GROUP_BY_LEVEL";
					Param.Add(new SqlParameter() { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = filter.search });
					Param.Add(new SqlParameter() { ParameterName = "@levelId", SqlDbType = SqlDbType.Int, Value = filter.id_type });
					break;
				default:
					Param.Add(new SqlParameter() { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = filter.search });
					break;
			}
			return SQLFactory.GetData(procedure, CommandType.StoredProcedure, Param);
		}

		internal static object DeleteGroupScheduler(int id_group, int id_scheduler)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group },
				new SqlParameter() { ParameterName = "@id_scheduler" , SqlDbType = SqlDbType.Int, Value = id_scheduler },
			};
			return SQLFactory.SetData(string.Format(@"{0}_SCHEDULER_DELETE", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object GetSchedulerGroup(int id_group)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group }
			};
			return SQLFactory.GetData(string.Format(@"{0}_SCHEDULER", BASE), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Eliminar.
		/// </summary>
		/// <returns>Response Data.</returns>
		internal static object Delete(int id)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id },
			};
			return SQLFactory.SetData(string.Format(@"{0}_DELETE", BASE), CommandType.StoredProcedure, Param);
		}


		internal static object DeletePlayer(int id_group, int id_player)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group },
				new SqlParameter() { ParameterName = "@player_id" , SqlDbType = SqlDbType.Int, Value = id_player },
			};
			return SQLFactory.SetData(String.Format(@"{0}_PLAYER_DELETE", BASE), CommandType.StoredProcedure, Param);
		}

		internal static object SetPlayers(int id_group, GroupPlayerRequest groupPlayer)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID , SqlDbType = SqlDbType.Int, Value = id_group },
				new SqlParameter() { ParameterName = "@player_id" , SqlDbType = SqlDbType.Int, Value = groupPlayer.player_id },
			};
			return SQLFactory.SetData(string.Format(@"{0}_PLAYER_PROCESS", BASE), CommandType.StoredProcedure, Param);
		}

		/// <summary>
		/// Obtener jugadores perteneciente a un grupo.
		/// </summary>
		/// <param name="id_group">Identificador delgrupo</param>
		/// <returns></returns>
		internal static object GetPlayers(int id_group)
		{
			List<SqlParameter> Param = new List<SqlParameter>()
			{
				new SqlParameter() { ParameterName = ID, SqlDbType = SqlDbType.Int, Value = id_group },
			};
			return SQLFactory.GetData(string.Format(@"{0}_PLAYER", BASE), CommandType.StoredProcedure, Param);
		}

	}
}