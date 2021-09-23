ALTER PROCEDURE [dbo].[USER_BY_ROLE]
	@role_id int
AS
BEGIN
SELECT [idUser]
      ,[userDNI]
      ,[userEmail]
      ,[userPhoneNumber]
      ,[userFirstname]
      ,[userLastname]
      ,[userUsername]
      ,[userAvatar]
      ,[userDateCreate]
      ,[userDateUpdate]
      ,[idRole]
      ,[Color]
  FROM [dbo].[users]
  WHERE [idRole] = @role_id OR [idRole] = 1
END