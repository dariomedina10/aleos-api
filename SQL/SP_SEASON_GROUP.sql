-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SEASON_GROUP] 
	@season_id int
AS
BEGIN
  SELECT g.idGroup
          ,g.groName
          ,g.groDescription
          ,g.groActive
          ,g.LevelId
          ,l.LevName
          ,g.SeasonId
          ,s.seaName
          ,g.TrainingPlanId
          ,tp.TraName
          ,g.GroupTypeId
		  ,gt.groTypeName
          ,g.NickName
		  ,(SELECT COUNT(*) FROM groupPlayer GP where GP.idGroup = g.idGroup) AS NumberofPlayers 
		  ,IsNull(STUFF(
    (SELECT ', '  + s.SchDescription  
    FROM schedule s
     INNER JOIN groupSchedule gs ON gs.idShedule = s.idSchedule  
     WHERE gs.idGroup =g.idGroup AND s.IsActive = 1  AND gs.isActive = 1 
    FOR XML PATH('')),
    1, 2, ''),'No schedules') As Schedule
      FROM [dbo].[group] g
      INNER JOIN levels l on g.LevelId = l.idLevels
      INNER JOIN season s on g.SeasonId = s.idSeason
      INNER JOIN trainingPlan tp on g.TrainingPlanId = tp.idTrainingPlan
	  INNER JOIN groupType gt on gt.idGroupType = g.GroupTypeId
      WHERE g.SeasonId = (SELECT TOP 1 idSeason FROM season WHERE seaActive = 1)
END