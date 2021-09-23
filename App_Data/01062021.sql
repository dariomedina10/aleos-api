-- =============================================
ALTER PROCEDURE [dbo].[GROUP_SCHEDULER]
	@group_id int
AS
BEGIN
SELECT s.idSchedule
      ,s.SchDescription
      ,s.SchWeekSelect
      ,s.SchTimeInit
	  , convert(varchar, s.SchTimeInit, 8) as FormatSchTimeInit 
      ,s.SchTimeEnd
	  , convert(varchar, s.SchTimeEnd, 8) as FormatSchTimeEnd 
      ,s.idUsersCoath
	  ,u.userFirstname
	  ,u.userLastname
      ,s.idLocation
	  ,l.LocName
      ,s.IsActive
  FROM schedule s
  INNER JOIN groupSchedule gs ON gs.idShedule = s.idSchedule
  INNER JOIN locations l ON l.idLocation = s.idLocation
  INNER JOIN users u ON u.idUser = s.idUsersCoath
  WHERE gs.idGroup = @group_id AND s.IsActive = 1
  AND gs.isActive = 1 AND L.LocActive = 1
END





-- =============================================

ALTER PROCEDURE [dbo].[SCHEDULER_NOT_GROUP] 
AS
BEGIN

SELECT * FROM
(
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
	  ,ISNULL(g.idGroup, 0) idGroup
	  FROM schedule s
	  LEFT JOIN groupSchedule gs ON gs.idShedule = s.idSchedule
	  LEFT JOIN [dbo].[group] g ON g.idGroup =  gs.idGroup
	  INNER JOIN locations l ON l.idLocation = s.idLocation
	  INNER JOIN users u ON u.idUser = s.idUsersCoath
	  WHERE s.IsActive = 1
) ss WHERE idGroup = 0

END