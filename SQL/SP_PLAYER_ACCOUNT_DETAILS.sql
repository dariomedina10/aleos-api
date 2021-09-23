CREATE OR ALTER PROCEDURE [dbo].[PLAYER_ACCOUNT_DETAILS] 
	@player_id int
AS
BEGIN
	SELECT a.[idAccount]
      ,a.[AccountName]
      ,a.[AccountEmail]
      ,a.[CreadistsInitials]
      ,a.[idProvider]
      ,a.[AccountPhone]
      ,a.[AccountMobile]
  FROM [dbo].[account] a
  inner join [dbo].[players] p on a.idProvider = p.idAccount
  Where p.idPlayer = @player_id
END