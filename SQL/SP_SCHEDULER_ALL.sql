ALTER PROCEDURE [dbo].[SCHEDULER_ALL] 
AS
BEGIN
 SELECT s.idSchedule
      ,s.SchDescription
      ,s.SchWeekSelect
      ,s.SchTimeInit
      ,s.SchTimeEnd
      ,s.idUsersCoath
	  ,u.userFirstname
	  ,u.userLastname
      ,s.idLocation
	  ,l.LocName
      ,s.IsActive
      ,s.NickName
	  ,FORMAT(s.SchTimeInit, N'hh\:mm') as startTime
	  ,FORMAT(s.SchTimeEnd, N'hh\:mm') as endTime
	   ,IsNull(STUFF(
    (SELECT ', '  +gg.groName  
    FROM  [group] gg
     INNER JOIN groupSchedule gs ON gs.idShedule  = s.idSchedule
     WHERE  gs.isActive = 1  and gs.idGroup  = gg.idGroup 
    FOR XML PATH('')),
    1, 2, ''),'No Group') As Groups
	  FROM schedule s
	  LEFT JOIN groupSchedule gs ON gs.idShedule = s.idSchedule
	  LEFT JOIN [dbo].[group] g ON g.idGroup =  gs.idGroup
	  LEFT JOIN locations l ON l.idLocation = s.idLocation
	  INNER JOIN users u ON u.idUser = s.idUsersCoath
	  WHERE s.IsActive = 1
      ORDER BY s.SchDescription
END