ALTER PROCEDURE [dbo].[USER_PROCESS] 
	@user_id int,
	@user_dni varchar(50),
	@user_phone varchar(50),
	@user_email varchar(40),
	@user_firsname varchar(50),
	@user_lastname varchar(50),
    @user_username varchar(50),
	@user_avatar varchar(MAX),
	@user_role int,
    @user_password varchar(50),
	@user_color varchar(10),
	@user_nick varchar(10)
AS
BEGIN
IF @user_id = 0
	BEGIN   
		INSERT INTO [dbo].[users]
				   ([userDNI]
				   ,[userEmail]
				   ,[userPhoneNumber]
				   ,[userFirstname]
				   ,[userLastname]
				   ,[userUsername]
				   ,[userPassword]
				   ,[userAvatar]
				   ,[userDateCreate]
				   ,[userDateUpdate]
				   ,[idRole]
				   ,[userOldPassword]
				   ,[Color]
				   ,[NickName])
			 VALUES
				   (@user_dni
				   ,@user_email
				   ,@user_phone
				   ,@user_firsname
				   ,@user_lastname
				   ,@user_username
				   ,@user_password
				   ,@user_avatar
				   ,GETDATE()
				   ,GETDATE()
				   ,@user_role
				   ,''
				   ,@user_color
				   ,@user_nick)
	END
ELSE  
	BEGIN
		UPDATE [dbo].[users]
		   SET [userDNI] = @user_dni
			  ,[userPhoneNumber] = @user_phone
			  ,[userFirstname] = @user_firsname
			  ,[userLastname] = @user_lastname
			  ,[userAvatar] = @user_avatar
			  ,[userDateUpdate] = GETDATE()
			  ,[idRole] = @user_role
			  ,[Color] = @user_color
			  ,[NickName] = @user_nick
		 WHERE idUser = @user_id
	END
END