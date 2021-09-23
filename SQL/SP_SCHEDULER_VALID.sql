ALTER PROCEDURE [dbo].[SCHEDULER_VALID] 
	@scheduler_id int,
	@description Nvarchar(100),
	@weekSelect Nvarchar(100),
	@time_ini time,
	@time_end time,
	@user_id int,
	@location_id int,
	@active bit
AS
BEGIN
	IF(@scheduler_id = 0)
	BEGIN
		SELECT S.[idSchedule]
		  ,S.[SchDescription]
		  ,S.[SchWeekSelect]
		  ,convert(char(5),S.[SchTimeInit]) AS SchTimeInit
		  ,convert(char(5),S.[SchTimeEnd]) AS SchTimeEnd 
		FROM [dbo].[schedule] S
		INNER JOIN (SELECT * FROM dbo.splitstring(@weekSelect)) E ON S.SchWeekSelect LIKE CONCAT('%', E.Name, '%')
		WHERE 
		(
			([SchTimeInit] > @time_ini AND [SchTimeEnd] < @time_ini) OR
			([SchTimeInit] < @time_end AND [SchTimeEnd] > @time_end)
		) 
		AND S.IsActive = 1
		AND (S.idLocation = @location_id OR S.idUsersCoath = @user_id)
		GROUP BY S.[idSchedule],S.[SchDescription],S.[SchWeekSelect],S.[SchTimeInit],S.[SchTimeEnd]
	END
	ELSE
	BEGIN 
		SELECT S.[idSchedule]
		  ,S.[SchDescription]
		  ,S.[SchWeekSelect]
		  ,convert(char(5),S.[SchTimeInit]) AS SchTimeInit
		  ,convert(char(5),S.[SchTimeEnd]) AS SchTimeEnd  
		FROM [dbo].[schedule] S
		INNER JOIN (SELECT * FROM dbo.splitstring(@weekSelect)) E ON S.SchWeekSelect LIKE CONCAT('%', E.Name, '%')
		WHERE 
		(
			([SchTimeInit] > @time_ini AND [SchTimeEnd] < @time_ini) OR
			([SchTimeInit] < @time_end AND [SchTimeEnd] > @time_end)
		) 
		AND S.[idSchedule] != @scheduler_id
		AND S.IsActive = 1
		AND (S.idLocation = @location_id OR S.idUsersCoath = @user_id)
		GROUP BY S.[idSchedule],S.[SchDescription],S.[SchWeekSelect],S.[SchTimeInit],S.[SchTimeEnd]
	END
END