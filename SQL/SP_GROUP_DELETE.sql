CREATE OR ALTER PROCEDURE [dbo].[GROUP_DELETE] 
	@group_id int
AS
BEGIN
	DELETE FROM [dbo].[group]
		  WHERE idGroup = @group_id
END