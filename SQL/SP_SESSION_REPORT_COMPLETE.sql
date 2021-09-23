CREATE OR ALTER PROCEDURE [dbo].[SESSION_REPORT_COMPLETE] 
	@status_id INT
AS
BEGIN
SELECT S.[idTrainingSession]
      ,[TraDate] AS DateIni
	  ,SD.[Date] AS DateEnd
      ,SD.GroupName
	  ,SD.LevelName
      ,SD.LocationName
	  ,SD.LocationAddress
	  ,SD.LocationGeo
      ,SD.CoachDNI
	  ,SD.CoachPhoneNumber
	  ,SD.CoachFirstname
	  ,SD.CoachLastname
      ,SD.ScheduleDescription
      ,[TraNote]
	  ,SS.StatusDescription
	  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = S.idTrainingSession) AS NumberofPlayers
	  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = S.idTrainingSession and TSD.DetAssistence =1) AS NumberofPlayersAttended
	  , S.idTrainingSessionStatus
  FROM [dbo].[TrainingSession] S
  INNER JOIN [dbo].[TrainingSessionStatus] SS on SS.idTrainingsessionStatus = S.idTrainingSessionStatus
  INNER JOIN [dbo].[TrainingSessionData] SD ON SD.idTrainingSession = S.idTrainingSession AND SD.DataActive = 1
  WHERE S.idTrainingSessionStatus = @status_id
  END