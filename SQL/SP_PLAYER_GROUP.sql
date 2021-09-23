CREATE OR ALTER PROCEDURE [dbo].[PLAYER_GROUP] --1
	@player_id int
AS
BEGIN
	SELECT P.idPlayer
		  ,P.plaFistName
		  ,P.plaLastName
		  ,P.plaImage
		  ,P.plaEmail
		  ,P.plaPhoneNumber
		  ,FORMAT(P.plaBirthDate, 'dd/MM/yyyy') as plaBirthDate
		  ,P.plaGender
		  ,P.idLevel
		  ,P.idProvider
		  ,P.idAccount
		  ,P.idLocation
		  ,P.NameSecundaryContact
		  ,P.phoneNumberSecudary
		  ,G.groName
		  , gs.SchTimeInit,
		  gs.SchTimeEnd,
		  gs.SchWeekSelect,
		 G.idGroup
	  FROM [dbo].[players] P
	  INNER JOIN [dbo].[groupPlayer] GP ON GP.idPlayer = P.idPlayer
	  INNER JOIN [dbo].[group] G ON G.idGroup = GP.idGroup
	  left join (
			select s.*,gs.idGroup FROM [dbo].[schedule] s 
			inner join [dbo].[groupSchedule] gs on s.idSchedule = gs.idShedule
		) gs on gs.idGroup =G.idGroup 
	  WHERE p.idPlayer = @player_id
END



