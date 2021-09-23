ALTER PROCEDURE [dbo].[DASHBOARD_COUNT] 
	@idUser int
AS
BEGIN
	IF(@idUser = 0)
	BEGIN
		SELECT 
			(SELECT COUNT(*) FROM players) AS 'CountPlayers',
			(SELECT COUNT(*) FROM dbo.[group] WHERE SeasonId = (SELECT TOP 1 idSeason FROM dbo.[season] WHERE seaActive = 1)) AS 'CountGroups',
			(SELECT COUNT(*) FROM dbo.[TrainingSession]) AS CountTrainingSession,
			(SELECT COUNT(*) FROM dbo.[TrainingSession] WHERE idTrainingSessionStatus = 2) AS CountActiveTrainingSession,
			(SELECT COUNT(*) FROM dbo.[schedule] WHERE IsActive = 1) AS CountActiveSchedule,
			(SELECT seaName FROM dbo.[season] WHERE seaActive = 1) AS NameSeason,
			(SELECT COUNT(*) FROM dbo.[TrainingSession] where idTrainingSessionStatus =1) AS CountTrainingSessionScheduled
	END
	ELSE
	BEGIN
		SELECT 
			(SELECT COUNT(*) FROM players) AS 'CountPlayers',
			(SELECT COUNT(*) FROM dbo.[group]) AS 'CountGroups',
			(SELECT COUNT(*) FROM dbo.[TrainingSession]) AS CountTrainingSession,
			(SELECT COUNT(*) FROM dbo.[TrainingSession] WHERE idTrainingSessionStatus = 2 and idCoache = @idUser) AS CountActiveTrainingSession,
			(SELECT COUNT(*) FROM dbo.[schedule] WHERE IsActive = 1) AS CountActiveSchedule,
			(SELECT seaName FROM dbo.[season] WHERE seaActive = 1) AS NameSeason,
		  (SELECT COUNT(*) FROM dbo.[TrainingSession] WHERE idTrainingSessionStatus = 1 and idCoache = @idUser) AS CountTrainingSessionScheduled
	END
END