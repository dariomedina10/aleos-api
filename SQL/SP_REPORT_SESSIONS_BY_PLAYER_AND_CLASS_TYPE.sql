ALTER   PROCEDURE [dbo].[REPORT_SESSIONS_BY_PLAYER_AND_CLASS_TYPE] 
	@dateIni datetime,
	@dateEnd datetime
AS
BEGIN
	SELECT 
		UPPER(PO.plaFistName + ' ' + PO.plaLastName) AS PlayerName,
		UPPER(AO.AccountName) AS AccountName,
		ISNULL((
			SELECT
				COUNT(*)
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN trainingSessionDetail TSD ON TS.idTrainingSession = TSD.idTrainingSession
			INNER JOIN players P ON P.idPlayer = TSD.idPlayer 
			INNER JOIN account A ON A.idProvider = P.idAccount
			WHERE TS.TraDate BETWEEN @dateIni AND @dateEnd AND TSD.DetAssistence = 1 AND GT.idGroupType = 1 AND P.idPlayer = PO.idPlayer AND P.idAccount = PO.idAccount
		),0) AS 'CountGroupLessons',+
		ISNULL((
			SELECT
				COUNT(*)
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN trainingSessionDetail TSD ON TS.idTrainingSession = TSD.idTrainingSession
			INNER JOIN players P ON P.idPlayer = TSD.idPlayer 
			INNER JOIN account A ON A.idProvider = P.idAccount
			WHERE TS.TraDate BETWEEN @dateIni AND @dateEnd AND TSD.DetAssistence = 1 AND GT.idGroupType = 2 AND P.idPlayer = PO.idPlayer AND P.idAccount = PO.idAccount
		),0) AS 'CountPrivateLessons',
		ISNULL((
			SELECT
				COUNT(*)
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN trainingSessionDetail TSD ON TS.idTrainingSession = TSD.idTrainingSession
			INNER JOIN players P ON P.idPlayer = TSD.idPlayer 
			INNER JOIN account A ON A.idProvider = P.idAccount
			WHERE TS.TraDate BETWEEN @dateIni AND @dateEnd AND TSD.DetAssistence = 1 AND GT.idGroupType = 3 AND P.idPlayer = PO.idPlayer AND P.idAccount = PO.idAccount
			GROUP BY GT.groTypeName
		),0) AS 'CountSemiPrivateLessons'
	FROM TrainingSession TSO 
	INNER JOIN [dbo].[group] G0 ON G0.idGroup = TSO.idGroup 
	INNER JOIN groupType GTO ON GTO.idGroupType = G0.GroupTypeId
	INNER JOIN trainingSessionDetail TSDO ON TSO.idTrainingSession = TSDO.idTrainingSession
	INNER JOIN players PO ON PO.idPlayer = TSDO.idPlayer 
	INNER JOIN account AO ON AO.idProvider = PO.idAccount
	WHERE TSO.TraDate BETWEEN @dateIni AND @dateEnd AND TSDO.DetAssistence = 1
	GROUP BY PO.plaFistName + ' ' + PO.plaLastName, AO.AccountName, PO.idPlayer, PO.idAccount
	ORDER BY PO.plaFistName + ' ' + PO.plaLastName;
  END