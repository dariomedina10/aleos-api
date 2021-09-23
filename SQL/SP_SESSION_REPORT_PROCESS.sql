
ALTER PROCEDURE [dbo].[SESSION_REPORT_PROCESS] 
	@status_id INT
AS
BEGIN
SELECT [idTrainingSession]
      ,FORMAT([TraDate], 'yyyy-MM-dd') as DateIni 
      ,FORMAT([TraDate], 'yyyy-MM-dd') as DateEnd 
      ,G.groName AS GroupName
	  ,L.LevName AS LevelName
      ,LC.LocName AS LocationName
	  ,LC.LocAddress AS LocationAddress
	  ,LC.LocGeo AS LocationGeo
      ,U.userDNI AS CoachDNI
	  ,U.userPhoneNumber AS CoachPhoneNumber
	  ,U.userFirstname AS CoachFirstname
	  ,U.userLastname AS CoachLastname
      ,SH.SchDescription AS ScheduleDescription
      ,[TraNote]
	  ,SS.StatusDescription
	  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = S.idTrainingSession) AS NumberofPlayers
	  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = S.idTrainingSession and TSD.DetAssistence =1) AS NumberofPlayersAttended
	  , S.idTrainingSessionStatus
  FROM [dbo].[TrainingSession] S
  INNER JOIN [dbo].[TrainingSessionStatus] SS on SS.idTrainingsessionStatus = S.idTrainingSessionStatus
  INNER JOIN [dbo].[group] G ON G.idGroup = S.idGroup
  INNER JOIN levels L ON L.idLevels = G.LevelId
  INNER JOIN locations LC ON LC.idLocation = S.idLocations
  INNER JOIN users U ON U.idUser = S.idCoache
  INNER JOIN schedule SH ON SH.idSchedule = S.idSchedule
  WHERE S.idTrainingSessionStatus = @status_id
END

