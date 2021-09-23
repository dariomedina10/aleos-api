ALTER PROCEDURE [dbo].[SCHEDULER_PROCESS] 
	@scheduler_id int,
	@description Nvarchar(100),
	@weekSelect Nvarchar(100),
	@time_ini time,
	@time_end time,
	@user_id int,
	@location_id int,
	@active bit,
	@nick Nvarchar(5)
AS
BEGIN
	IF @scheduler_id = 0
	BEGIN
			INSERT INTO [dbo].[schedule]
					   ([SchDescription]
					   ,[SchWeekSelect]
					   ,[SchTimeInit]
					   ,[SchTimeEnd]
					   ,[idUsersCoath]
					   ,[idLocation]
					   ,[IsActive]
					   ,[NickName])
			 VALUES
				   (@description
				   ,@weekSelect
				   ,@time_ini
				   ,@time_end
				   ,@user_id
				   ,@location_id
				   ,@active
				   ,@nick)
		END
	ELSE  
	BEGIN
			UPDATE [dbo].[schedule]
				SET [SchDescription] = @description
				  ,[SchWeekSelect] = @weekSelect
				  ,[SchTimeInit] = @time_ini
				  ,[SchTimeEnd] = @time_end
				  ,[idUsersCoath] = @user_id
				  ,[idLocation] = @location_id
				  ,[IsActive] = @active
				  ,[NickName] = @nick
				WHERE idSchedule = @scheduler_id
		END
END