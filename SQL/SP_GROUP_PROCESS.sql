ALTER PROCEDURE [dbo].[GROUP_PROCESS] 
	@group_id int,
	@name varchar(40),
	@description varchar(300),
	@level_id int,
	@season_id int,
	@trainingPlan_id int,
	@active bit,
	@group_type int,
	@nick varchar(5)
AS
BEGIN
IF @group_id = 0
	BEGIN   
		INSERT INTO [dbo].[group]
			   ([groName]
			   ,[groDescription]
			   ,[groActive]
			   ,[LevelId]
			   ,[SeasonId]
			   ,[TrainingPlanId]
			   ,[GroupTypeId]
			   ,[NickName])
		 VALUES
			   (@name
			   ,@description
			   ,@active
			   ,@level_id
			   ,(SELECT TOP 1 idSeason FROM season WHERE seaActive = 1)
			   ,@trainingPlan_id
			   ,@group_type
			   ,@nick)
	END
ELSE  
	BEGIN
		UPDATE [dbo].[group]
		SET [groName] = @name
			,[groDescription] = @description
			,[groActive] = @active
			,[LevelId] = @level_id
			,[TrainingPlanId] = @trainingPlan_id
			,[GroupTypeId] = @group_type
			,[NickName] = @nick
		WHERE idGroup = @group_id
	END
END