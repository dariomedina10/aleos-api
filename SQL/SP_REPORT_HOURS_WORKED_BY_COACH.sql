CREATE OR ALTER   PROCEDURE [dbo].[REPORT_HOURS_WORKED_BY_COACH] 
AS
BEGIN
	SELECT 
		UU.idUser,
		UPPER(UU.userFirstname + ' ' + UU.userLastname) AS CoachName,
		ISNULL((
			SELECT
				SUM(DATEDIFF(hour,S.SchTimeInit, S.SchTimeEnd)) AS Hours
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN schedule S ON S.idSchedule = TS.idSchedule
			INNER JOIN users U ON U.idUser = TS.idCoache
			WHERE GT.idGroupType = 1 AND U.idUser = UU.idUser
		),0) AS 'HourstGroupLessons',
		ISNULL((
			SELECT
				SUM(DATEDIFF(hour,S.SchTimeInit, S.SchTimeEnd)) AS Hours
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN schedule S ON S.idSchedule = TS.idSchedule
			INNER JOIN users U ON U.idUser = TS.idCoache
			WHERE GT.idGroupType = 2 AND U.idUser = UU.idUser
		),0) AS 'HourstPrivateLessons',
		ISNULL((
			SELECT
				SUM(DATEDIFF(hour,S.SchTimeInit, S.SchTimeEnd)) AS Hours
			FROM TrainingSession TS 
			INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup 
			INNER JOIN groupType GT ON GT.idGroupType = G.GroupTypeId
			INNER JOIN schedule S ON S.idSchedule = TS.idSchedule
			INNER JOIN users U ON U.idUser = TS.idCoache
			WHERE GT.idGroupType = 3 AND U.idUser = UU.idUser
		),0) AS 'HourstSemiPrivateLessons'
	FROM TrainingSession TS 
	INNER JOIN [dbo].[group] G ON G.idGroup = TS.idGroup
	INNER JOIN schedule S ON S.idSchedule = TS.idSchedule
	INNER JOIN users UU ON UU.idUser = TS.idCoache
	GROUP BY (UU.userFirstname + ' ' + UU.userLastname), UU.idUser
	ORDER BY UU.userFirstname + ' ' + UU.userLastname;
END