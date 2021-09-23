ALTER PROCEDURE [dbo].[DASHBOARD_TRAINING_SESSION] 
	@idUser int
AS
BEGIN
	IF(@idUser = 0)
	BEGIN
		SELECT TOP 10 [idTrainingSession]
			  ,FORMAT([TraDate],'dddd, dd/MM/yyyy, hh:mm') as TraDate
			  ,g.groName
			  ,CONCAT(u.userFirstname, ' ', u.userLastname) as coachName
			  ,tss.StatusDescription
			  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = TS.idTrainingSession) AS NumberofPlayers
		    ,sch.SchWeekSelect
		  FROM [dbo].[TrainingSession] TS
		  INNER JOIN [dbo].[group] g on g.idGroup = TS.[idGroup]
		  INNER JOIN users u on u.idUser = TS.idCoache
		  INNER JOIN TrainingSessionStatus tss on tss.idTrainingsessionStatus = TS.[idTrainingSessionStatus]
		  LEFT JOIN schedule sch on sch.idSchedule = TS.idSchedule
		  ORDER BY [TraDate] DESC
	 END
	 ELSE
	 BEGIN
		SELECT TOP 10 [idTrainingSession]
			  ,FORMAT([TraDate],'dddd, dd/MM/yyyy, hh:mm') as TraDate
			  ,g.groName
			  ,CONCAT(u.userFirstname, ' ', u.userLastname) as coachName
			  ,tss.StatusDescription
			  ,(SELECT COUNT(*) FROM trainingSessionDetail TSD WHERE TSD.idTrainingSession = TS.idTrainingSession) AS NumberofPlayers
		   ,sch.SchWeekSelect
		  FROM [dbo].[TrainingSession] TS
		  INNER JOIN [dbo].[group] g on g.idGroup = TS.[idGroup]
		  INNER JOIN users u on u.idUser = TS.idCoache
		  INNER JOIN TrainingSessionStatus tss on tss.idTrainingsessionStatus = TS.[idTrainingSessionStatus]
		  LEFT JOIN schedule sch on sch.idSchedule = TS.idSchedule
		  WHERE u.idUser = @idUser
		  ORDER BY [TraDate] DESC
	 END
END