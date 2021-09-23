ALTER PROCEDURE [dbo].[SCHEDULER_BY_GROUP] 
	@filter int,
	@iduser int
AS
BEGIN
	IF(@iduser = 0)
	BEGIN
		 SELECT 
			   CONCAT( '(', ISNULL(u.NickName, CONCAT(u.userFirstname, ' ', u.userLastname)) , ') - G: ', ISNULL(G.NickName, G.groName), ' - L: ', ISNULL(l.LocNickName, l.LocName)) as title
			  ,g.groName as 'GroupName'
			  ,l.LocName as 'LocationName'
			  ,CONCAT(u.userFirstname , ' ', u.userLastname ) as 'CoachName'
			  ,sa.seaName as 'SeasonName'
			  ,FORMAT(sa.seaStart, 'yyyy-MM-dd') as start
			  ,FORMAT(sa.seaEnd, 'yyyy-MM-dd') as 'end'
			  ,CONCAT(sa.idSeason,'-',s.idSchedule,'-',g.idGroup,'-',l.idLocation,'-',u.idUser ) AS id 
			  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(s.SchWeekSelect, 'Monday', '1'), 'Tuesday', '2'), 'Wednesday', '3'), 'Thursday', '4'), 'Friday', '5'), 'Saturday', '6'), 'Sunday', '0') as daysOfWeek
			  ,FORMAT(s.SchTimeInit, N'hh\:mm\:ss') as startTime
			  ,FORMAT(s.SchTimeEnd, N'hh\:mm\:ss') as endTime
			  ,CASE (Select top 1 confValue FROM config WHERE confName = 'ColorView')
					WHEN 'location' THEN l.Color
					WHEN 'user' THEN u.Color
					ELSE (Select top 1 confValue FROM config WHERE confName = 'DefaultColor')
			   END AS backgroundColor
			  FROM schedule s
			  INNER JOIN groupSchedule gs ON gs.idShedule = s.idSchedule
			  INNER JOIN [dbo].[group] g ON g.idGroup =  gs.idGroup
			  INNER JOIN season sa ON sa.idSeason = g.SeasonId
			  INNER JOIN locations l ON l.idLocation = s.idLocation
			  INNER JOIN users u ON u.idUser = s.idUsersCoath
			  WHERE s.IsActive = 1 AND 
					g.groActive = 1 AND
					g.idGroup = @filter
	END
	ELSE
	BEGIN
		 SELECT 
			   CONCAT( '(', ISNULL(u.NickName, CONCAT(u.userFirstname, ' ', u.userLastname)) , ') - G: ', ISNULL(G.NickName, G.groName), ' - L: ', ISNULL(l.LocNickName, l.LocName)) as title
			  ,g.groName as 'GroupName'
			  ,l.LocName as 'LocationName'
			  ,CONCAT(u.userFirstname , ' ', u.userLastname ) as 'CoachName'
			  ,sa.seaName as 'SeasonName'
			  ,FORMAT(sa.seaStart, 'yyyy-MM-dd') as start
			  ,FORMAT(sa.seaEnd, 'yyyy-MM-dd') as 'end'
			  ,CONCAT(sa.idSeason,'-',s.idSchedule,'-',g.idGroup,'-',l.idLocation,'-',u.idUser ) AS id 
			  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(s.SchWeekSelect, 'Monday', '1'), 'Tuesday', '2'), 'Wednesday', '3'), 'Thursday', '4'), 'Friday', '5'), 'Saturday', '6'), 'Sunday', '0') as daysOfWeek
			  ,FORMAT(s.SchTimeInit, N'hh\:mm\:ss') as startTime
			  ,FORMAT(s.SchTimeEnd, N'hh\:mm\:ss') as endTime
			  ,CASE (Select top 1 confValue FROM config WHERE confName = 'ColorView')
					WHEN 'location' THEN l.Color
					WHEN 'user' THEN u.Color
					ELSE (Select top 1 confValue FROM config WHERE confName = 'DefaultColor')
			   END AS backgroundColor
			  FROM schedule s
			  INNER JOIN groupSchedule gs ON gs.idShedule = s.idSchedule
			  INNER JOIN [dbo].[group] g ON g.idGroup =  gs.idGroup
			  INNER JOIN season sa ON sa.idSeason = g.SeasonId
			  INNER JOIN locations l ON l.idLocation = s.idLocation
			  INNER JOIN users u ON u.idUser = s.idUsersCoath
			  WHERE s.IsActive = 1 AND 
					g.groActive = 1 AND
					g.idGroup = @filter AND
					s.idUsersCoath = @iduser;
	END
END