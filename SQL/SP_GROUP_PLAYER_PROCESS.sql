CREATE OR ALTER PROCEDURE [dbo].[GROUP_PLAYER_PROCESS] 
	@group_id int,
	@player_id int
AS
BEGIN
IF NOT EXISTS (SELECT * FROM groupPlayer WHERE idGroup = @group_id AND idPlayer = @player_id)
	BEGIN   
		-- Validar si este usuario no esta en otro grupo donde choque su horario.
		INSERT INTO [dbo].[groupPlayer]
			   ([idGroup]
			   ,[idPlayer])
		 VALUES
			   (@group_id
			   ,@player_id)
	END
END
