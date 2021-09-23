CREATE OR ALTER  PROCEDURE [dbo].[GROUP_NOT_PLAYER] --1
	@player_id int
AS
BEGIN
	SELECT G.*, gs.SchTimeInit,gs.SchTimeEnd,gs.SchWeekSelect FROM (
			SELECT gp.[idPlayer],
			g.groName,
			g.idGroup
			FROM [group] g  
			left JOIN dbo.groupPlayer GP on GP.idGroup = g.idGroup and GP.idPlayer = @player_id
		) G	
		left join (
			select s.*,gs.idGroup FROM [dbo].[schedule] s 
			inner join [dbo].[groupSchedule] gs on s.idSchedule = gs.idShedule
		) gs on gs.idGroup =G.idGroup 
	WHERE g.idPlayer IS NULL
END