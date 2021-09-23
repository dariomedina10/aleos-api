ALTER PROCEDURE [dbo].[USER_ALL] 
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
      ,[NickName]
  FROM [dbo].[users]
END
