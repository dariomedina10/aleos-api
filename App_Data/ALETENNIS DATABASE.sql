
GO
/****** Object:  Table [dbo].[users]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[roles]
GO
/****** Object:  Table [dbo].[players]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[players]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[levels]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[levels]
GO
/****** Object:  Table [dbo].[credictPlan]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[credictPlan]
GO
/****** Object:  Table [dbo].[config]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[config]
GO
/****** Object:  Table [dbo].[activation]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[activation]
GO
/****** Object:  Table [dbo].[account]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP TABLE [dbo].[account]
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_LOGIN_BASIC]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[USER_SELECT_LOGIN_BASIC]
GO
/****** Object:  StoredProcedure [dbo].[USER_SEARCH_BY_EMAIL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[USER_SEARCH_BY_EMAIL]
GO
/****** Object:  StoredProcedure [dbo].[USER_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[USER_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[USER_CHANCE_PASSWORD]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[USER_CHANCE_PASSWORD]
GO
/****** Object:  StoredProcedure [dbo].[USER_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[USER_ALL]
GO
/****** Object:  StoredProcedure [dbo].[ROLES_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[ROLES_ALL]
GO
/****** Object:  StoredProcedure [dbo].[PLAYER_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[PLAYER_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[PLAYER_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[PLAYER_ALL]
GO
/****** Object:  StoredProcedure [dbo].[LOCATION_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LOCATION_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[LOCATION_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LOCATION_DELETE]
GO
/****** Object:  StoredProcedure [dbo].[LOCATION_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LOCATION_ALL]
GO
/****** Object:  StoredProcedure [dbo].[LEVEL_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LEVEL_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[LEVEL_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LEVEL_DELETE]
GO
/****** Object:  StoredProcedure [dbo].[LEVEL_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[LEVEL_ALL]
GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CREDICTPLAN_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CREDICTPLAN_DELETE]
GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CREDICTPLAN_ALL]
GO
/****** Object:  StoredProcedure [dbo].[CONFIG_UPDATE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CONFIG_UPDATE]
GO
/****** Object:  StoredProcedure [dbo].[CONFIG_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CONFIG_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[CONFIG_KEY]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CONFIG_KEY]
GO
/****** Object:  StoredProcedure [dbo].[CONFIG_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[CONFIG_ALL]
GO
/****** Object:  StoredProcedure [dbo].[ACTIVATION_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[ACTIVATION_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[ACCOUNT_PROCESS]
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
DROP PROCEDURE [dbo].[ACCOUNT_ALL]
GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ACCOUNT_ALL] 
AS
BEGIN
SELECT [idAccount]
      ,[AccountName]
      ,[AccountEmail]
      ,[CreadistsInitials]
      ,[idProvider]
  FROM [dbo].[account]
END










GO
/****** Object:  StoredProcedure [dbo].[ACCOUNT_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ACCOUNT_PROCESS] 
	@account_id int,
	@name varchar(50),
	@email varchar(50),
	@credits int,
	@idProvider varchar(50)
AS
BEGIN
IF EXISTS (SELECT * FROM account WHERE idAccount = @account_id or idProvider = @idProvider)
BEGIN   
UPDATE [dbo].[account]
   SET [AccountName] = @name
      ,[AccountEmail] = @email
      ,[CreadistsInitials] = @credits
      ,[idProvider] = @idProvider
 WHERE idAccount = @account_id or idProvider = @idProvider
END
ELSE  
BEGIN
INSERT INTO [dbo].[account]
           ([AccountName]
           ,[AccountEmail]
           ,[CreadistsInitials]
           ,[idProvider])
     VALUES
           (@name
           ,@email
           ,@credits
           ,@idProvider)
END
END


GO
/****** Object:  StoredProcedure [dbo].[ACTIVATION_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ACTIVATION_PROCESS] 
    @user_id varchar(50),
    @activation_code varchar(50),
	@hours_code int
AS
BEGIN
INSERT INTO [dbo].[activation]
           ([iduser]
           ,[activation]
           ,[dateCreate]
           ,[hoursFinish]
           ,[active])
     VALUES
           (@user_id
           ,@activation_code
           ,GETDATE()
           ,@hours_code
           ,1)
END




GO
/****** Object:  StoredProcedure [dbo].[CONFIG_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONFIG_ALL] 
AS
BEGIN
SELECT [idConfig]
      ,[confName]
      ,[confDescriction]
      ,[confValue]
      ,[confGroup]
  FROM [dbo].[config]
END









GO
/****** Object:  StoredProcedure [dbo].[CONFIG_KEY]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONFIG_KEY] 
    @ID int,
	@KEY varchar(40)
AS
BEGIN
IF EXISTS (SELECT * FROM config WHERE idConfig = CONVERT(INT, @ID))
BEGIN   
SELECT [idConfig]
      ,[confName]
      ,[confDescriction]
      ,[confValue]
      ,[confGroup]
  FROM [dbo].[config] WHERE idConfig = @ID
END
ELSE  
BEGIN
SELECT [idConfig]
      ,[confName]
      ,[confDescriction]
      ,[confValue]
      ,[confGroup]
  FROM [dbo].[config] WHERE confName = @KEY
END
END







GO
/****** Object:  StoredProcedure [dbo].[CONFIG_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONFIG_PROCESS] 
	@config_id int,
	@name varchar(30),
	@description varchar(100),
	@value varchar(MAX),
	@group varchar(30)
AS
BEGIN
IF EXISTS (SELECT * FROM config WHERE idConfig = @config_id or confName = @name)
BEGIN   
UPDATE [dbo].[config]
   SET [confDescriction] = @description
      ,[confValue] = @value
      ,[confGroup] = @group
	  ,[confDataUpdate] = GETDATE()
 WHERE idConfig = @config_id or confName = @name
END
ELSE  
BEGIN
INSERT INTO [dbo].[config]
           ([confName]
           ,[confDescriction]
           ,[confValue]
           ,[confGroup]
		   ,[confDataUpdate])
     VALUES
           (@name
           ,@description
           ,@value
           ,@group
		   ,GETDATE())
END
END

GO
/****** Object:  StoredProcedure [dbo].[CONFIG_UPDATE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CONFIG_UPDATE] 
	@config_id int,
	@name varchar(30),
	@value varchar(MAX)
AS
BEGIN
IF EXISTS (SELECT * FROM config WHERE idConfig = @config_id or confName = @name)
BEGIN   
UPDATE [dbo].[config]
   SET [confValue] = @value
	  ,[confDataUpdate] = GETDATE()
 WHERE idConfig = @config_id or confName = @name
END
END

GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CREDICTPLAN_ALL] 
AS
BEGIN
SELECT [idCredictPlan]
      ,[planName]
      ,[planCredict]
      ,[idPlanProvider]
	  ,[planProviderName]
  FROM [dbo].[credictPlan]
END








GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CREDICTPLAN_DELETE] 
	@credictplan_id int
AS
BEGIN
	DELETE FROM [dbo].[credictPlan]
		WHERE idCredictPlan = @credictplan_id
END



GO
/****** Object:  StoredProcedure [dbo].[CREDICTPLAN_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CREDICTPLAN_PROCESS] 
	@credictplan_id int,
	@name varchar(40),
	@credits int,
	@PlanProvider_id varchar(30),
	@Plan_Provider_name varchar(50)
AS
BEGIN
IF @credictplan_id = 0
BEGIN   

INSERT INTO [dbo].[credictPlan]
           ([planName]
           ,[planCredict]
           ,[idPlanProvider]
		   ,[planProviderName])
     VALUES
           (@name
           ,@credits
           ,@PlanProvider_id
		   ,@Plan_Provider_name)
END
ELSE  
BEGIN
UPDATE [dbo].[credictPlan]
   SET [planName] = @name
      ,[planCredict] = @credits
      ,[idPlanProvider] = @PlanProvider_id
	  ,[planProviderName] = @Plan_Provider_name
 WHERE idCredictPlan = @credictplan_id
END
END






GO
/****** Object:  StoredProcedure [dbo].[LEVEL_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LEVEL_ALL] 
AS
BEGIN
SELECT [idLevels]
      ,[LevName]
      ,[LevDescription]
  FROM [dbo].[levels]
END







GO
/****** Object:  StoredProcedure [dbo].[LEVEL_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LEVEL_DELETE] 
	@level_id int
AS
BEGIN
	DELETE FROM [dbo].[levels]
		WHERE idLevels = @level_id
END


GO
/****** Object:  StoredProcedure [dbo].[LEVEL_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LEVEL_PROCESS] 
	@level_id int,
	@name varchar(40),
	@description varchar(100)
AS
BEGIN
IF @level_id = 0
BEGIN   

INSERT INTO [dbo].[levels]
           ([LevName]
           ,[LevDescription])
     VALUES
           (@name
           ,@description)
END
ELSE  
BEGIN
UPDATE [dbo].[levels]
   SET [LevName] = @name
      ,[LevDescription] = @description
 WHERE idLevels = @level_id
END
END





GO
/****** Object:  StoredProcedure [dbo].[LOCATION_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LOCATION_ALL] 
AS
BEGIN
SELECT  l.idLocation,
		l.LocName,
		l.LocNickName,
		l.LocImage,
		l.LocActive,
		l.Loc_idLocation,
		ll.LocName as LocParentName,
		l.LocAddress,
		l.LocGeo
FROM [dbo].[locations] l
LEFT JOIN locations ll on ll.idLocation = l.Loc_idLocation
END








GO
/****** Object:  StoredProcedure [dbo].[LOCATION_DELETE]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LOCATION_DELETE] 
	@location_id int
AS
BEGIN
	DELETE FROM [dbo].[locations]
		WHERE idLocation = @location_id
END



GO
/****** Object:  StoredProcedure [dbo].[LOCATION_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LOCATION_PROCESS] 
	@location_id int,
	@name varchar(45),
	@nick varchar(45),
	@image varchar(max),
	@active bit,
	@location_id_parent int,
	@address varchar(150),
	@geo varchar(45)
AS
BEGIN
IF @location_id = 0
BEGIN   
INSERT INTO [dbo].[locations]
           ([LocName]
           ,[LocNickName]
           ,[LocImage]
           ,[LocActive]
           ,[Loc_idLocation]
           ,[LocAddress]
           ,[LocGeo])
     VALUES
           (@name
           ,@nick
           ,@image
           ,@active
           ,@location_id_parent
           ,@address
           ,@geo)
END
ELSE  
BEGIN
UPDATE [dbo].[locations]
   SET [LocName] = @name
      ,[LocNickName] = @nick
      ,[LocImage] = @image
      ,[LocActive] = @active
      ,[Loc_idLocation] = @location_id_parent
      ,[LocAddress] = @address
      ,[LocGeo] = @geo
 WHERE idLocation = @location_id
END
END






GO
/****** Object:  StoredProcedure [dbo].[PLAYER_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PLAYER_ALL] 
AS
BEGIN
SELECT [idPlayer]
      ,[plaFistName]
      ,[plaLastName]
      ,[plaImage]
      ,[plaEmail]
      ,[plaPhoneNumber]
      ,[plaBirthDate]
      ,[plaGender]
      ,[idLevel]
      ,[idProvider]
      ,[idAccount]
      ,[idLocation]
      ,[NameSecundaryContact]
      ,[phoneNumberSecudary]
  FROM [dbo].[players]
END











GO
/****** Object:  StoredProcedure [dbo].[PLAYER_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PLAYER_PROCESS] 
	@player_id int,
	@fistName varchar(50),
	@lastName varchar(50),
	@image varchar(MAX),
	@email varchar(50),
	@phone varchar(20),
	@birthDate date,
	@gender varchar(45),
	@idProvider varchar(50),
	@nameSecundaryContact varchar(50),
	@phoneSecundaryContact varchar(20),
	@idLevel int,
	@idAccount int,
	@idLocation int
AS
BEGIN
IF EXISTS (SELECT * FROM players WHERE idPlayer = @player_id or idProvider = @idProvider)
BEGIN   
INSERT INTO [dbo].[players]
           ([plaFistName]
           ,[plaLastName]
           ,[plaImage]
           ,[plaEmail]
           ,[plaPhoneNumber]
           ,[plaBirthDate]
           ,[plaGender]
           ,[idLevel]
           ,[idProvider]
           ,[idAccount]
           ,[idLocation]
           ,[NameSecundaryContact]
           ,[phoneNumberSecudary])
     VALUES
           (@fistName
           ,@lastName
           ,@image
           ,@email
           ,@phone
           ,@birthDate
           ,@gender
           ,@idLevel
           ,@idProvider
           ,@idAccount
           ,@idLocation
           ,@nameSecundaryContact
           ,@phoneSecundaryContact)
END
ELSE  
BEGIN
UPDATE [dbo].[players]
   SET [plaFistName] = @fistName
      ,[plaLastName] = @lastName
      ,[plaImage] = @image
      ,[plaEmail] = @email
      ,[plaPhoneNumber] = @phone
      ,[plaBirthDate] = @birthDate
      ,[plaGender] = @gender
      ,[idLevel] = @idLevel
      ,[idProvider] = @idProvider
      ,[idAccount] = @idAccount
      ,[idLocation] = @idLocation
      ,[NameSecundaryContact] = @nameSecundaryContact
      ,[phoneNumberSecudary] = @phoneSecundaryContact
 WHERE idPlayer = @player_id or idProvider = @idProvider
END
END

GO
/****** Object:  StoredProcedure [dbo].[ROLES_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ROLES_ALL]
AS
BEGIN
SELECT [idRole]
      ,[roleName]
  FROM [dbo].[roles]
END

GO
/****** Object:  StoredProcedure [dbo].[USER_ALL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USER_ALL] 
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
  FROM [dbo].[users]
END






GO
/****** Object:  StoredProcedure [dbo].[USER_CHANCE_PASSWORD]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USER_CHANCE_PASSWORD] 
    @user_id varchar(50),
    @new_password varchar(50)
AS
BEGIN
UPDATE [dbo].[users]
   SET [userPassword] = @new_password
 WHERE [idUser] = @user_id
END





GO
/****** Object:  StoredProcedure [dbo].[USER_PROCESS]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USER_PROCESS] 
	@user_id int,
	@user_dni varchar(50),
	@user_phone varchar(50),
	@user_email varchar(40),
	@user_firsname varchar(50),
	@user_lastname varchar(50),
    @user_username varchar(50),
	@user_avatar varchar(MAX),
	@user_role int,
    @user_password varchar(50)
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
			   ,[userOldPassword])
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
			   ,'')
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
	 WHERE idUser = @user_id
END
END




GO
/****** Object:  StoredProcedure [dbo].[USER_SEARCH_BY_EMAIL]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USER_SEARCH_BY_EMAIL] 
    @user_email varchar(50)
AS
BEGIN
	SELECT u.idUser
		  ,u.userDNI
		  ,u.userEmail
		  ,u.userPhoneNumber
		  ,u.userFirstname
		  ,u.userLastname
		  ,u.userUsername
		  ,u.userPassword
		  ,u.userAvatar
		  ,u.userDateCreate
		  ,u.userDateUpdate
		  ,u.idRole
		  ,u.userOldPassword
		  ,r.roleName
	 FROM users u
	 INNER JOIN roles r ON r.idRole = u.idRole
     WHERE
           (u.userEmail = @user_email)
END




GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_LOGIN_BASIC]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USER_SELECT_LOGIN_BASIC] 
    @user_username varchar(50),
    @user_password varchar(50)
AS
BEGIN
	SELECT u.idUser
		  ,u.userDNI
		  ,u.userEmail
		  ,u.userPhoneNumber
		  ,u.userFirstname
		  ,u.userLastname
		  ,u.userUsername
		  ,u.userPassword
		  ,u.userAvatar
		  ,u.userDateCreate
		  ,u.userDateUpdate
		  ,u.idRole
		  ,u.userOldPassword
		  ,r.roleName
	 FROM users u
	 INNER JOIN roles r ON r.idRole = u.idRole
     WHERE
           (u.userUsername = @user_username OR u.userEmail = @user_username) AND u.userPassword = @user_password
END



GO
/****** Object:  Table [dbo].[account]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[idAccount] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[AccountEmail] [nvarchar](50) NOT NULL,
	[CreadistsInitials] [int] NOT NULL,
	[idProvider] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[idAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[activation]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activation](
	[iduser] [int] NULL,
	[activation] [nvarchar](50) NOT NULL,
	[dateCreate] [datetime] NOT NULL,
	[hoursFinish] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_activation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[config]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[config](
	[idConfig] [int] IDENTITY(1,1) NOT NULL,
	[confName] [nvarchar](30) NOT NULL,
	[confDescriction] [nvarchar](100) NULL,
	[confValue] [nvarchar](max) NOT NULL,
	[confGroup] [nvarchar](30) NOT NULL,
	[confDataUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_config] PRIMARY KEY CLUSTERED 
(
	[idConfig] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[credictPlan]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credictPlan](
	[idCredictPlan] [int] IDENTITY(1,1) NOT NULL,
	[planName] [nvarchar](40) NOT NULL,
	[planCredict] [int] NOT NULL,
	[idPlanProvider] [nvarchar](30) NOT NULL,
	[planProviderName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_credictPlan] PRIMARY KEY CLUSTERED 
(
	[idCredictPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[levels]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[levels](
	[idLevels] [int] IDENTITY(1,1) NOT NULL,
	[LevName] [nvarchar](40) NOT NULL,
	[LevDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[idLevels] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[locations]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[idLocation] [int] IDENTITY(1,1) NOT NULL,
	[LocName] [nvarchar](45) NOT NULL,
	[LocNickName] [nvarchar](45) NOT NULL,
	[LocImage] [nvarchar](max) NOT NULL,
	[LocActive] [bit] NOT NULL,
	[Loc_idLocation] [int] NULL,
	[LocAddress] [nvarchar](150) NOT NULL,
	[LocGeo] [nvarchar](45) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[idLocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[players]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[players](
	[idPlayer] [int] IDENTITY(1,1) NOT NULL,
	[plaFistName] [nvarchar](50) NOT NULL,
	[plaLastName] [nvarchar](50) NOT NULL,
	[plaImage] [nvarchar](max) NOT NULL,
	[plaEmail] [nvarchar](50) NOT NULL,
	[plaPhoneNumber] [nvarchar](20) NOT NULL,
	[plaBirthDate] [date] NOT NULL,
	[plaGender] [nvarchar](45) NOT NULL,
	[idLevel] [int] NULL,
	[idProvider] [nvarchar](50) NOT NULL,
	[idAccount] [int] NOT NULL,
	[idLocation] [int] NOT NULL,
	[NameSecundaryContact] [nvarchar](50) NULL,
	[phoneNumberSecudary] [nvarchar](20) NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[idPlayer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roles]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[idRole] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 21/4/2021 12:05:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[userDNI] [varchar](50) NOT NULL,
	[userEmail] [varchar](40) NOT NULL,
	[userPhoneNumber] [varchar](50) NULL,
	[userFirstname] [varchar](50) NOT NULL,
	[userLastname] [varchar](50) NOT NULL,
	[userUsername] [varchar](50) NOT NULL,
	[userPassword] [varchar](50) NOT NULL,
	[userAvatar] [varchar](max) NULL,
	[userDateCreate] [datetime] NOT NULL,
	[userDateUpdate] [datetime] NOT NULL,
	[idRole] [int] NOT NULL,
	[userOldPassword] [varchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (201, N'Emir J Machado', N'Ejmr210653@gmail.com', 0, N'1152217000002496173')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (202, N'Heliana Gimenez', N'helianagdebarboza@gmail.com', 0, N'1152217000002496185')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (203, N'Valentina Capodiferro', N'valentina_c12@hotmail.com', 0, N'1152217000002497157')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (204, N'Lilyvania Mikulski', N'lilyvania@gmail.com', 0, N'1152217000002525003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (205, N'Andrea Serrano', N'arodero98@gmail.com', 0, N'1152217000002534011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (206, N'Desiree Lungu', N'Desireelungu85@gmail.com', 0, N'1152217000002534037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (207, N'Maria A Mavares', N'marialemavares@gmail.com', 0, N'1152217000002534051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (208, N'Leilei Gao', N'leilei_gao@hotmail.com', 0, N'1152217000002534063')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (209, N'Miguel Ortega', N'mjortega1969@gmail.com', 0, N'1152217000002534077')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (210, N'Eugenia Leal', N'EUGIE555@HOTMAIL.COM', 0, N'1152217000002534089')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (211, N'Liseth Fernandez', N'liseth.fernandez@gmail.com', 0, N'1152217000002534103')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (212, N'Solange Ponceleon', N'solange_corinav@hotmail.com', 0, N'1152217000002534115')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (213, N'Santos Montero', N'santos1813@gmail.com', 0, N'1152217000002534127')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (214, N'Claudia Velez', N'cpvelez78@hotmail.com', 0, N'1152217000002534139')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (215, N'Alejandra Mier y teran', N'Alejmieryteran@gmail.com', 0, N'1152217000002547104')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (216, N'Cosme Lopez', N'clopez@gangofideas.com', 0, N'1152217000002548011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (217, N'Kris Baranowski', N'kysu@wp.eu', 0, N'1152217000002548023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (218, N'Paula Lazzati', N'paula@lazzati.com.ar', 0, N'1152217000002548035')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (219, N'Stella Giraldella', N'stellagiraldella@gmail.com', 0, N'1152217000002549027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (220, N'Verushka Escudero', N'vje027@gmail.com', 0, N'1152217000002554106')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (221, N'Henry Infante', N'dvali71@hotmail.com', 0, N'1152217000002554118')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (222, N'ahily davila', N'ahilydavila76@gmail.com', 0, N'1152217000002555011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (223, N'Maritza Estrada', N'maritzaeec@gmail.com', 0, N'1152217000002556003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (224, N'Mayory Calvo', N'mcarett2010@gmail.com', 0, N'1152217000002556015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (225, N'Rosi Pazos', N'Rosi2203@gmail.com', 0, N'1152217000002556027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (226, N'Deborah Rodriguez', N'debbie.rodriguez0921@gmail.com', 0, N'1152217000002556039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (227, N'Veronica Barillas', N'veronica_barillas@yahoo.com', 0, N'1152217000002556051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (228, N'Alexandra Calcano', N'alexandracalcano@gmail.com', 0, N'1152217000002556063')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (229, N'Satish Karnam', N'pallavi.kolli@gmail.com', 0, N'1152217000002556089')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (230, N'Andres Villalever', N'Cynthia2309@hotmail.com', 0, N'1152217000002569003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (231, N'Helen Rodriguez', N'helson2717@gmail.com', 0, N'1152217000002569015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (232, N'Maria Gabriela Otamendi', N'gaby.otamendi@gmail.com', 0, N'1152217000002588009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (233, N'Rafael Rodrigues', N'rrodrigues@gsp.cn', 0, N'1152217000002589030')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (234, N'Marlin Wehbe', N'marlinw35@gmail.com', 0, N'1152217000002589042')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (235, N'Juliana Puentes', N'Julyjuly_26@hotmail.com', 0, N'1152217000002589094')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (236, N'Arabia Fernandez', N'Zcharak@hotmail.com', 0, N'1152217000002589106')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (237, N'Cathmir Rodriguez', N'cathmirr@gmail.com', 0, N'1152217000002601011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (238, N'Daniel Ramirez', N'danielramirezb@yahoo.com', 0, N'1152217000002601135')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (239, N'Erika Diaz', N'erikadiaz@ardemiami.org', 0, N'1152217000002602030')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (240, N'anna karina scarcella', N'annakarinaferrara@gmail.com', 0, N'1152217000002602093')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (241, N'Jose Vazquez', N'josemvazquez@me.com', 0, N'1152217000002615029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (242, N'Anousheh (Andy) Sarfaraz', N'andy050506@yahoo.com', 0, N'1152217000002618003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (243, N'Mileydy Perez', N'mileydycastera@gmail.com', 0, N'1152217000002618015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (244, N'Karim Mieles', N'karimyrafy@hotmail.com', 0, N'1152217000002624033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (245, N'Carla Mosciaro', N'carlimosciaro@hotmail.com', 0, N'1152217000002631057')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (246, N'Carlos Cabo', N'tm110698@aol.com', 0, N'1152217000002631069')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (247, N'Lina Felipez', N'', 0, N'1152217000002631153')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (248, N'Yanco Milanes', N'yancomilanes@gmail.com', 0, N'1152217000002631165')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (249, N'ANA DEHORTA', N'anamarthadehorta@hotmail.com', 0, N'1152217000002631177')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (250, N'Manuel Castano', N'castmann23@hotmail.com', 0, N'1152217000002631189')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (251, N'Mily Martinez', N'mily100pre@yahoo.com', 0, N'1152217000002631201')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (252, N'Ruben Saavedra', N'ruben@intercreditusa.com', 0, N'1152217000002631215')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (253, N'Maria Elena Goodman', N'mariaelenagoodmantv@gmail.com', 0, N'1152217000002631227')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (254, N'Yudit Lam', N'yudit_lam@yahoo.com', 0, N'1152217000002631239')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (255, N'Martin Arana', N'martin2331@gmail.com', 0, N'1152217000002631251')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (256, N'Eyleen Viza', N'leelovemusic13@gmail.com', 0, N'1152217000002631263')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (257, N'Zahra Hazari', N'flowerz5@yahoo.com', 0, N'1152217000002631275')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (258, N'Jaime Arraez', N'jaime_arraez@hotmail.com', 0, N'1152217000002631287')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (259, N'yunirka herrera', N'yunigael@gmail.com', 0, N'1152217000002631299')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (260, N'Jacqueline Otero', N'jotero2012@icloud.com', 0, N'1152217000002631311')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (261, N'Jorge Perez', N'jorgeaperez@live.com', 0, N'1152217000002631323')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (262, N'Karina Gil', N'karinagil1@yahoo.com', 0, N'1152217000002631335')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (263, N'Carla Parra', N'carlaparra0207@gmail.com', 0, N'1152217000002631347')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (264, N'Yumary Kohler', N'', 0, N'1152217000002631359')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (265, N'Zoe Arzuza', N'arzuzazoe@gmail.com', 0, N'1152217000002631371')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (266, N'CLAUDIA PRADO', N'pradoclaudiav@gmail.com', 0, N'1152217000002631383')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (267, N'Taufik Kadid', N'tkadid@gmail.com', 0, N'1152217000002631395')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (268, N'Stefania Alvarado', N'stefaniaalvarado@hotmail.com', 0, N'1152217000002631407')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (269, N'Juliana Saenz', N'julisaenz@msn.com', 0, N'1152217000002631419')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (270, N'Marior Rodriguez', N'rodriguez.marior@gmail.com', 0, N'1152217000002631431')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (271, N'Alejandra Monllau', N'amonllau@hotmail.com', 0, N'1152217000002631443')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (272, N'Carlos Mora', N'mahelych@hotmail.com', 0, N'1152217000002631455')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (273, N'Maria Salas', N'msalas75@gmail.com', 0, N'1152217000002631467')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (274, N'Leonor Fernandez', N'leo.fernandez@urw.com', 0, N'1152217000002631479')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (275, N'Paola Antepara', N'paoantepara@gmail.com', 0, N'1152217000002631491')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (276, N'Xinia Gayoso', N'fuzypanda26@gmail.com', 0, N'1152217000002631503')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (277, N'Yumary Kohler', N'yumaryk@hotmail.com', 0, N'1152217000002631515')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (278, N'Jacqueline Cantero', N'rserra2@hotmail.com', 0, N'1152217000002631527')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (279, N'Edna Cariello', N'edna@gigatronics.net', 0, N'1152217000002631539')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (280, N'Nathalia Azuaje', N'nathi74@hotmail.com', 0, N'1152217000002631551')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (281, N'Sandra Gonzalez', N'seglz@hotmail.com', 0, N'1152217000002631563')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (282, N'Arnaldo Cardona', N'arnaldocardona@gmail.com', 0, N'1152217000002631575')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (283, N'Maria Maloney', N'mariajoseordonez@yahoo.com', 0, N'1152217000002661007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (284, N'Yina Sanchez', N'Yinaksanchez@gmail.com', 0, N'1152217000002661019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (285, N'Deepan Muthusamy', N'deepanrajkumar@gmail.com', 0, N'1152217000002673013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (286, N'Minerva Ganges', N'minervaganges@me.com', 0, N'1152217000002673025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (287, N'Kishore Jilla', N'kishore.jilla@hotmail.com', 0, N'1152217000002673037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (288, N'Van Nguyen', N'Janele40@gmail.com', 0, N'1152217000002674047')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (289, N'Pebbles Camacho', N'Pecasa14@hotmail.com', 0, N'1152217000002705005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (290, N'Tayana Lima', N'tayanamelzer@hotmail.com', 0, N'1152217000002710055')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (291, N'Victoria Hajjar', N'vhajjar1@gmail.com', 0, N'1152217000002710067')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (292, N'Maria Schott', N'Mjschott7@gmail.com', 0, N'1152217000002711027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (293, N'Myleen Arana', N'myleen31@gmail.com', 0, N'1152217000002731005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (294, N'Elizabeth Ayala', N'Ely624@gmail.com', 0, N'1152217000002731017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (295, N'Anaitte Camacho', N'anaitte.camacho@gmail.com', 0, N'1152217000002731071')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (296, N'Eugenia Spotar', N'Spotar.e@gmail.com', 0, N'1152217000002739007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (297, N'Amalia De Abreu', N'swzilandia26@gmail.com', 0, N'1152217000002739019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (298, N'Cindy Bury', N'Cindy.johana19@gmail.com', 0, N'1152217000002739031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (299, N'MARIA HELENA PONGUTA', N'mhponguta@gmail.com', 0, N'1152217000002739043')
GO
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (300, N'Helena Scheeren', N'lenahls@gmail.com', 0, N'1152217000002739055')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (301, N'Erika LLaurado', N'erlljunk@gmail.com', 0, N'1152217000002739067')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (302, N'Vannia Castellanos', N'vanniac@hotmail.com', 0, N'1152217000002743023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (303, N'Martha Valderrama', N'MARVAL1021@GMAIL.COM', 0, N'1152217000002764025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (304, N'Christiane Sebaaly', N'christiane@whitelinemod.com', 0, N'1152217000002766071')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (305, N'Luis Gervan', N'luisgervan@yahoo.com', 0, N'1152217000002771005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (306, N'Michael Sarol', N'michaelsarol@gmail.com', 0, N'1152217000002797005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (307, N'Lorna Lopez Marin', N'Lornis27@hotmail.com', 0, N'1152217000002819080')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (308, N'Jennifer Tejada', N'Lcdajennifertejada@gmail.com', 0, N'1152217000002819092')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (309, N'Alejandra Lugo', N'alelugotv@gmail.com', 0, N'1152217000002820025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (310, N'Elaine Reynoso', N'ereynoso@francoshipping.com', 0, N'1152217000002821048')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (311, N'Yolanda Hung', N'hyols@hotmail.com', 0, N'1152217000002821062')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (312, N'FABIOLA FERNANDEZ', N'FABIOLAFERNANDEZLUGO@GMAIL.COM', 0, N'1152217000002821074')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (313, N'Giselle Villafana', N'vellesig@yahoo.com', 0, N'1152217000002821092')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (314, N'Maria Gabriela Diaz', N'Gabrielita44@hotmail.com', 0, N'1152217000002821118')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (315, N'Andreina Diaz', N'Andreina2003do@gmail.com', 0, N'1152217000002821130')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (316, N'Abelis Barrenechea', N'abelisbarrenechea@gmail.com', 0, N'1152217000002821142')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (317, N'Catalina Saldarriaga', N'catalina@dmhamericas.com', 0, N'1152217000002821154')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (318, N'Jenny Alizo', N'alizojenny@gmail.com', 0, N'1152217000002835027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (319, N'lino aponte', N'linoapontediaz@gmail.com', 0, N'1152217000002835039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (320, N'Fletcher Christian', N'redphin@hotmail.com', 0, N'1152217000002835075')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (321, N'adrian hernandez', N'ajhernandez93@hotmail.com', 0, N'1152217000002835101')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (322, N'Jesus Alfaro', N'anahir56@hotmail.com', 0, N'1152217000002836009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (323, N'Mariel Pena', N'Mariel_pena@hotmail.com', 0, N'1152217000002836021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (324, N'Maria Lataczewski-Recio', N'mjskyros@gmail.com', 0, N'1152217000002836069')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (325, N'Greesy Misuraca', N'greesym@outlook.com', 0, N'1152217000002860005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (326, N'Trina Fletcher', N'trinafletcher@gmail.com', 0, N'1152217000002860017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (327, N'ANJANA REGULA', N'anjanaregula@gmail.com', 0, N'1152217000002860151')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (328, N'Cristina Zapata', N'cristinazo@hotmail.com', 0, N'1152217000002860163')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (329, N'Maria virginia Rojas', N'Rojasmariavirginia@gmail.com', 0, N'1152217000002862051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (330, N'Ofelia Rojas', N'Ofelia.rv@hotmail.com', 0, N'1152217000002865011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (331, N'Maybe Castillo', N'shalomsarah2@gmail.com', 0, N'1152217000002865074')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (332, N'FABRICIA CAVALCANTI', N'facnat@yahoo.com', 0, N'1152217000002866017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (333, N'Yairys Hernandez', N'hyairys@yahoo.com', 0, N'1152217000002891017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (334, N'DANIEL OTERO', N'daniel.otero@micasillerovirtual.com', 0, N'1152217000002891092')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (335, N'Nadia Morales', N'nadia86_m@hotmail.com', 0, N'1152217000002891167')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (336, N'Walter Hernandez', N'whern6922@hotmail.com', 0, N'1152217000002892070')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (337, N'Marcelo Molina', N'swmm86@gmail.com', 0, N'1152217000002892138')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (338, N'Iginio Cangero', N'Iginiocangero7@gmail.com', 0, N'1152217000002909005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (339, N'Giovanna Lostaunau', N'Prisbet@msn.com', 0, N'1152217000002909017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (340, N'stephen reinoso', N'sreinoso1972@hotmail.com', 0, N'1152217000002909029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (341, N'Arturo Ojeda', N'aplusolutions@bellsouth.net', 0, N'1152217000002909110')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (342, N'Patty Avello', N'Mavello@yahoo.com', 0, N'1152217000002909122')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (343, N'Catalina Pineda', N'catapineda@hotmail.com', 0, N'1152217000002909134')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (344, N'Sidonia Sandoval', N'sisabelsandoval@gmail.com', 0, N'1152217000002930034')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (345, N'Katherine Lopez', N'klopezini7i@gmail.com', 0, N'1152217000002931017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (346, N'Ricardo Diaz DIAMS', N'ricardosuperautos@gmail.com', 0, N'1152217000002967005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (347, N'Angela Virviescas', N'Angela_virviescas@yahoo.com', 0, N'1152217000002984011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (348, N'Dennis Ortiz', N'mdm95union@gmail.com', 0, N'1152217000003005005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (349, N'Ana Willches', N'anitawillches@hotmail.com', 0, N'1152217000003005074')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (350, N'Ailen De La Vega', N'delavegacordeiro15@gmail.com', 0, N'1152217000003020003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (351, N'Leonardo Rodriguez', N'Leoantony9669@gmail.com', 0, N'1152217000003020035')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (352, N'Gioconda Bolinches', N'gbolinchess@gmail.com', 0, N'1152217000003037003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (353, N'Alexander Cruz', N'cruz_alexander67@yahoo.com', 0, N'1152217000003055003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (354, N'Vivian Jimenez', N'Vivianjimenez86@hotmail.com', 0, N'1152217000003055015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (355, N'Ana Gonzalez', N'anachristina.gonzalez@gmail.com', 0, N'1152217000003062003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (356, N'Roberto Gonzalez', N'bobi080872@gmail.com', 0, N'1152217000003082044')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (357, N'Adrianella Almao', N'Adria21_91@hotmail.com', 0, N'1152217000003083007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (358, N'Yria Juantorena', N'juantyri@yahoo.es', 0, N'1152217000003083040')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (359, N'sugeidy mederos', N'sugeidy21@hotmail.com', 0, N'1152217000003125025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (360, N'Tania Llerena', N'taniallerena2012@gmail.com', 0, N'1152217000003126017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (361, N'Eyleen Jimenez', N'Leelovemusic13@gmail.com', 0, N'1152217000003143043')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (362, N'Rosanna Rubino', N'Rosanna.rubino86@gmail.com', 0, N'1152217000003172015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (363, N'Emir MachadoAccount1', N'emiramn2306@gmail.com', 0, N'1152217000003190025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (364, N'Blanca Wegener', N'blanca_wegener@yahoo.com', 0, N'1152217000003203041')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (365, N'Jenny Covarrubia', N'jennycovarrubia@hotmail.com', 0, N'1152217000003221027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (366, N'Igor Suarez', N'igorsuarez@yahoo.com', 0, N'1152217000003241009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (367, N'Maricati Garces', N'maricatigarcesds@gmail.com', 0, N'1152217000003241021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (368, N'Yenet Rios', N'Yiny2001@bellsouth.net', 0, N'1152217000003241033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (369, N'Cinthia Madera', N'yanina23@hotmail.com', 0, N'1152217000003242007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (370, N'Rafael Ortiz', N'', 0, N'1152217000003254005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (371, N'Luis Perrone', N'peronif5@gmail.com', 0, N'1152217000003276007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (372, N'Hilda Padron', N'hilda_padron21@hotmail.com', 0, N'1152217000003278035')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (373, N'Juan Manzano', N'juanmapadel@hotmail.com', 0, N'1152217000003302003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (374, N'Ramon Cordova', N'ramonantoniocordova@gmail.com', 0, N'1152217000003302015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (375, N'Esthefany Rodriguez', N'S-Rodriguez23@outlook.com', 0, N'1152217000003317019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (376, N'Daniel Ramírez', N'', 0, N'1152217000003317031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (377, N'Daniel Ramírez', N'', 0, N'1152217000003317043')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (378, N'Carly Rites', N'Pardorites@hotmail.com', 0, N'1152217000003343005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (379, N'Nelson Peguero', N'peguero.nelson@gmail.com', 0, N'1152217000003355005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (380, N'Paula Gaviria', N'paugavi829@gmail.com', 0, N'1152217000003359027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (381, N'Blanca Pena Marro', N'bpena124@gmail.com', 0, N'1152217000003392045')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (382, N'Liana Loughlin', N'Lilybug1@aol.com', 0, N'1152217000003481039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (383, N'aldrina grisanti', N'aldrina84@gmail.com', 0, N'1152217000003487033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (384, N'Tahamara Chinea', N'tahamara2008@gmail.com', 0, N'1152217000003497005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (385, N'Bruno Andrade', N'brunel21@hotmail.com', 0, N'1152217000003497017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (386, N'Sarah Bin Diran', N'Sarahaldraan@gmail.com', 0, N'1152217000003556099')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (387, N'Susanne Zwingel', N'susanne.zwingel@gmx.com', 0, N'1152217000003590029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (388, N'Jorge Tovar', N'jorgedt2007@gmail.com', 0, N'1152217000003591007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (389, N'EDGAR ALZOLAY', N'MEGLOBALSUPPLIES@GMAIL.COM', 0, N'1152217000003591019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (390, N'Luis De la mano', N'Skyline405@hotmail.com', 0, N'1152217000003699011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (391, N'Jorge Calderon', N'Gemcalde@hotmail.com', 0, N'1152217000003717005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (392, N'Ray Zimkus', N'snapys@msn.com', 0, N'1152217000003749003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (393, N'Dora Posada', N'dorizposa@yahoo.com', 0, N'1152217000003786005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (394, N'Angelica Sanguino', N'angie_sanguino@hotmail.com', 0, N'1152217000003786017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (395, N'anabel garcia', N'aanabel3@aol.com', 0, N'1152217000003786029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (396, N'Jose Rodriguez', N'joserodriguez@leonmedicalcenters.com', 0, N'1152217000003786041')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (397, N'Gloria Muller', N'gloriamullerj@gmail.com', 0, N'1152217000003786053')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (398, N'Karla Racedo', N'Kracedo@outlook.com', 0, N'1152217000003786118')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (399, N'Cristina Abisambra', N'cristinabisambra@yahoo.com', 0, N'1152217000003786130')
GO
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (400, N'MARLENE RETT', N'mrett@bellsouth.net', 0, N'1152217000003786142')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (401, N'Ivian Boruchowski', N'Idestro@yahoo.com.br', 0, N'1152217000003786154')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (402, N'Joseph Quinn', N'joequo44@hotmail.com', 0, N'1152217000003786166')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (403, N'Sonia Allbarracin', N'soniaalb@yahoo.com', 0, N'1152217000003803005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (404, N'Soledad Urdaneta', N'Urdanetajorge2@gmail.com', 0, N'1152217000003812098')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (405, N'Grace Sanchez', N'Grace.sanchez@ymail.com', 0, N'1152217000003812110')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (406, N'Monica Hablich', N'monica@hablich.com', 0, N'1152217000003812122')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (407, N'Amelia Nuñez', N'Amealbertjr@gmail.com', 0, N'1152217000003813035')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (408, N'Vanessa Simmons', N'b8seballmom_08@yahoo.com', 0, N'1152217000003813047')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (409, N'Jacqueline Quintero', N'jackiequintero@aol.com', 0, N'1152217000003813059')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (410, N'Ayaiza Fernandez', N'ayaiza@hotmail.com', 0, N'1152217000003813071')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (411, N'Karen Rojer', N'karenrojer@hotmail.com', 0, N'1152217000003813113')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (412, N'Rodriguez Mayelin', N'mayecora@gmail.com', 0, N'1152217000003819031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (413, N'Johana Salazar', N'Johanaesc239@hotmail.com', 0, N'1152217000003832048')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (414, N'Karina Torres', N'karinav.torres@hotmail.com', 0, N'1152217000003832062')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (415, N'Beatriz Monje', N'bettystgo@yahoo.es', 0, N'1152217000003832074')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (416, N'Dominick Martinez', N'deeman021@aol.com', 0, N'1152217000003833050')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (417, N'Cathy Fernandez', N'cathyfern@icloud.com', 0, N'1152217000003834021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (418, N'Rommel Alvarez', N'alvarezarom@gmail.com', 0, N'1152217000003834033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (419, N'Yaneisy Martinez', N'yaneisy@live.com', 0, N'1152217000003834045')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (420, N'Claudia Moran', N'Claudiamoran83@gmail.com', 0, N'1152217000003843017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (421, N'Madelin Moya’s', N'Madelinickol@gmail.com', 0, N'1152217000003843029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (422, N'Enaysis Oropesa', N'Enays84@live.com', 0, N'1152217000003885017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (423, N'Dayamis Hernandez', N'jorcanod1@gmail.com', 0, N'1152217000003919003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (424, N'Mariana Estrada', N'Marianig@aol.com', 0, N'1152217000003919015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (425, N'Davmary Hernandez-Jorcano', N'davmyhj17@yahoo.com', 0, N'1152217000003919027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (426, N'KARINA GOMEZ', N'CFT071901@YAHOO.COM', 0, N'1152217000003923007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (427, N'Carlos A Prieto', N'cap958@aol.com', 0, N'1152217000003923019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (428, N'YAIMEN RODRIGUEZ', N'yrrodri@hotmail.com', 0, N'1152217000003923031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (429, N'Yailen Rodriguez', N'YAILENR@YAHOO.COM', 0, N'1152217000003923043')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (430, N'Sameh Alkomos', N'samehkaras@yahoo.com', 0, N'1152217000003965009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (431, N'Azucena Gonzalez', N'azucena8424@yahoo.com', 0, N'1152217000003981005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (432, N'Natalia Couto', N'cutynaty09@aol.com', 0, N'1152217000003991007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (433, N'Javier Leal', N'ing.javier.leal@outlook.com', 0, N'1152217000003991019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (434, N'Guillermo Manuel Bonet', N'Guillermo.Bonet@mail.com', 0, N'1152217000003999005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (435, N'Mario Vitiello', N'Mario@vivesmart.com', 0, N'1152217000004000037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (436, N'Paula Madrid', N'paula21madrid@hotmail.com', 0, N'1152217000004000049')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (437, N'Herold Chery', N'Cherydembe23@gmail.com', 0, N'1152217000004066003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (438, N'Pedro Veganzones', N'pveganzones@gmail.com', 0, N'1152217000004066015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (439, N'Jessica Garcia', N'aaftercareprogram@gmail.com', 0, N'1152217000004080005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (440, N'Adriane Cordoba', N'Oraleamigo@aol.com', 0, N'1152217000004080017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (441, N'Carolina Vasquez', N'Wilmercorcho@aol.com', 0, N'1152217000004102003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (442, N'Lorena Rodriguez', N'Lori.rodriguez517@gmail.com', 0, N'1152217000004102023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (443, N'Ingryd Garcia', N'mariaperez096@gmail.com', 0, N'1152217000004129003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (444, N'Andreina Florez', N'Andreinaflorezg@gmail.com', 0, N'1152217000004129015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (445, N'Luly Lamas', N'Lulylamas8@gmail.com', 0, N'1152217000004148003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (446, N'ALFONSO GARCIA', N'ALFONSO805@GMAIL.COM', 0, N'1152217000004202007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (447, N'Jonathan Alegria', N'Jalegria001@gmail.com', 0, N'1152217000004220013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (448, N'Sandra Miranda', N'Sandrapirre27@hotmail.com', 0, N'1152217000004235059')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (449, N'Naveen Agrawal', N'naveenagrawal10@yahoo.com', 0, N'1152217000004254003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (450, N'GISELA BRITO', N'gigi.realty@yahoo.com', 0, N'1152217000004254015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (451, N'IVAN JORDAN', N'ijbarboza@icloud.com', 0, N'1152217000004263005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (452, N'Diana castellanos', N'Dianamcastellanos1981@gmail.com', 0, N'1152217000004316009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (453, N'JOSEIDA BERBIN', N'JOSEIDA.BERBIN@GMAIL.COM', 0, N'1152217000004316101')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (454, N'vanessa londono', N'vanelondono@hotmail.com', 0, N'1152217000004317003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (455, N'Evandro Augusto', N'evandroaugustoh@hotmail.com', 0, N'1152217000004317015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (456, N'Ada Ramirez', N'adaramirez323150@gmail.com', 0, N'1152217000004317027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (457, N'Yarelis Rodriguez', N'Robertcarreno@me.com', 0, N'1152217000004317075')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (458, N'Giovanni Medina', N'ameraccountgio@outlook.com', 0, N'1152217000004317087')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (459, N'carlos herrera', N'cherrera26@hotmail.com', 0, N'1152217000004347029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (460, N'Yesenia De la torre', N'Yesy910@bellsouth.net', 0, N'1152217000004376015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (461, N'Vanessa Chavez', N'Vanessachaveznyc@gmail.com', 0, N'1152217000004438005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (462, N'FRANCELA TORREALBA', N'francodavih@outlook.com', 0, N'1152217000004472007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (463, N'Jessica Sanabria', N'iamjessicasanabria@gmail.com', 0, N'1152217000004486009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (464, N'Gina Marinelli', N'ginamrinelli@me.com', 0, N'1152217000004511015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (465, N'Hans Sarmiento', N'Hanssarmiento@hotmail.com', 0, N'1152217000005111005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (466, N'ing.olgeddie.ferrer', N'ing.olgeddie.ferrer@outlook.com', 0, N'1152217000005126094')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (467, N'Raul Moreano', N'stefanotenis3@gmail.com', 0, N'1152217000005183029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (468, N'Francesca Fierro', N'Francedegrimaldi@gmail.com', 0, N'1152217000005273003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (469, N'Yosetty D’Yrichitty', N'yosettyda@gmail.com', 0, N'1152217000005285009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (470, N'Yvette Ancona', N'Yancona@gmail.com', 0, N'1152217000005286005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (471, N'Maria Celeste Guzmán Salazar', N'Mariaceleguz@gmail.com', 0, N'1152217000005286067')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (472, N'LINDA PENUELA', N'lindapenuela@yahoo.com', 0, N'1152217000005286081')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (473, N'Janet Valles', N'Janetv0337@yahoo.com', 0, N'1152217000005287097')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (474, N'Stephanie Bejarano', N'stephanie_0806@hotmail.com', 0, N'1152217000005302085')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (475, N'Valerie Pozo', N'valeriepozo@aol.com', 0, N'1152217000005302099')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (476, N'Alexa Gil-Rodriguez', N'agil01@yahoo.com', 0, N'1152217000005302111')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (477, N'Juliana Villa Bedoya', N'Nanavilla@yahoo.es', 0, N'1152217000005335003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (478, N'Valeria Restrepo', N'Valemarta829@hotmail.com', 0, N'1152217000005335015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (479, N'Luisiana Souto', N'Ls718051@gmail.com', 0, N'1152217000005341013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (480, N'Roshan Ayala', N'Darioayalam@hotmail.com', 0, N'1152217000005360051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (481, N'Marcela Furihata', N'Marcela1598@hotmail.com', 0, N'1152217000005360135')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (482, N'Maristel Rodriguez', N'Mdavalos@doralacademyes.org', 0, N'1152217000005362183')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (483, N'OlgePrueba', N'', 0, N'1152217000005420039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (484, N'Helen Wisniewski', N'helenjwb@gmail.com', 0, N'1152217000005438017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (485, N'Carmen Balaguer', N'balaguercarmen@gmail.com', 0, N'1152217000005442005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (486, N'Sylvana Godoy', N'sylvana.godoy@gmail.com', 0, N'1152217000005442017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (487, N'Michelle Serra', N'Mim016@aol.com', 0, N'1152217000005470015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (488, N'Evelin Pena', N'evelinpz08@gmail.com', 0, N'1152217000005481005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (489, N'Elza Vasconcellos', N'evascon@aol.com', 0, N'1152217000005510005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (490, N'Anthonny Betancourt', N'betancourtrinconanthonny@gmail.com', 0, N'1152217000005510017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (491, N'Juan Pineda', N'Laura321@hotmail.com', 0, N'1152217000005575003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (492, N'Emir Machado', N'emir_1694@hotmail.com', 0, N'1152217000005612024')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (493, N'Emir Machado', N'', 0, N'1152217000005616004')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (494, N'Carmen Vence', N'design@juliavence.com', 0, N'1152217000005641013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (495, N'Leidimar Da rocha', N'Leydimard@gmail.com', 0, N'1152217000005652003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (496, N'Nestor Jaramillo', N'nestorjaramillo7@hotmail.com', 0, N'1152217000005658007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (497, N'Balamurugan Krishnan', N'krish.balaa@gmail.com', 0, N'1152217000005672049')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (498, N'Maria Gabriela Caputo', N'mariagabrielacaputo@gmail.com', 0, N'1152217000005756005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (499, N'Stephanie Pelaez', N'stephaniepelaez10@gmail.com', 0, N'1152217000005756033')
GO
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (500, N'Juan Lorenzo Mendoza', N'Jlm_h@hotmail.com', 0, N'1152217000005845028')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (501, N'Elaine Conrad', N'beba.conrad@gmail.com', 0, N'1152217000005846003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (502, N'Marlian Monsalve', N'Msma200677@gmail.com', 0, N'1152217000005846033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (503, N'Raul Barrios Raul Barrios', N'rbarrios73@hotmail.com', 0, N'1152217000005846045')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (504, N'Marcos Sanchez', N'marcosalejandro33@gmail.com', 0, N'1152217000005866007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (505, N'Jandy Fernandez', N'jandyfernandez@gmail.com', 0, N'1152217000005867026')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (506, N'Hodana rodriguez', N'hokaroca@hotmail.com', 0, N'1152217000005911029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (507, N'Penelope Gomes', N'Gomesmalaguti@gmail.com', 0, N'1152217000005950069')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (508, N'Emmanuel Serrano', N'emmita_serrano@hotmail.com', 0, N'1152217000005976017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (509, N'Gisel Orizondo', N'Giselarcht@yahoo.com', 0, N'1152217000005976029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (510, N'Barbara Imperatori', N'bimperatori@gmail.com', 0, N'1152217000005994007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (511, N'Dejiang Chen', N'dechen@fiu.edu', 0, N'1152217000005994061')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (512, N'Mariana Monteverde', N'marimonteverde_90@hotmail.com', 0, N'1152217000006000030')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (513, N'Aishwarya reddy Nerallapally', N'aishwaryareddyy@gmail.com', 0, N'1152217000006017003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (514, N'Yohadys Junco', N'yohadys@bellsouth.net', 0, N'1152217000006025007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (515, N'Jordana Fernandez', N'jordanaffernandezg@gmail.com', 0, N'1152217000006025019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (516, N'Danielle Le Roy', N'Danielle@dts-tech.com', 0, N'1152217000006056015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (517, N'Fernanda Serrano', N'Jimena502@hotmail.com', 0, N'1152217000006092015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (518, N'Abe Natera', N'Abelnatera@hotmail.com', 0, N'1152217000006117005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (519, N'Pedro Flores', N'Pflores618@yahoo.com', 0, N'1152217000006117017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (520, N'Cristina Gomez', N'torresgomez021@gmail.com', 0, N'1152217000006117029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (521, N'Laura Lopez', N'Lauraorimar@gmail.com', 0, N'1152217000006131003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (522, N'Vanessa Gill', N'vane.mm@me.com', 0, N'1152217000006142005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (523, N'Salomon El alam', N'', 0, N'1152217000006160003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (524, N'VANESSA GARCIA', N'vaneghindoyan@gmail.com', 0, N'1152217000006208005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (525, N'Natalia Garcia', N'Nataliagarciav84@gmail.com', 0, N'1152217000006208017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (526, N'Erika Plata', N'erikaplata@me.com', 0, N'1152217000006210007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (527, N'Susann Pereira', N'sus_1605@hotmail.com', 0, N'1152217000006210019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (528, N'Olgeddie Ferrer', N'', 0, N'1152217000006233263')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (529, N'e.machado@aletennis.com', N'', 0, N'1152217000006233279')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (530, N'Javier Gomez', N'c14ab@aol.com', 0, N'1152217000006244079')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (531, N'Yuhan Fan', N'Yuhan.fan9045@gmail.com', 0, N'1152217000006244091')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (532, N'Karla Ortega', N'karlaort2018@gmail.com', 0, N'1152217000006244103')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (533, N'abdul delbani', N'abed_dalbani@hotmail.com', 0, N'1152217000006265025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (534, N'Yethsabel Quijano', N'yethsabel@hotmail.com', 0, N'1152217000006266003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (535, N'Vicmar Silva', N'vssl26@gmail.com', 0, N'1152217000006266015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (536, N'Zoha Asim', N'dohaasim@hotmail.com', 0, N'1152217000006282003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (537, N'Ailen Lucero', N'Luceroailen@yahoo.com', 0, N'1152217000006303065')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (538, N'Mileidis Pena Marro', N'Jetrueba2004@yahoo.com', 0, N'1152217000006303106')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (539, N'Julie Hamilton', N'jmhct4@gmail.com', 0, N'1152217000006374003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (540, N'Andrea Cardona', N'andrec.17@hotmail.com', 0, N'1152217000006374015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (541, N'Vanessa Torres', N'vanessa_t18@hotmail.com', 0, N'1152217000006394003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (542, N'Janiss Martinez', N'janissmartinezonewayinsurance@gmail.com', 0, N'1152217000006409005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (543, N'Nicole Rizo', N'0430957jr@gmail.com', 0, N'1152217000006409017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (544, N'Cielo Llanos', N'Cielollanos@gmail.com', 0, N'1152217000006411049')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (545, N'Darlene Bayne', N'baynedarlene@gmail.com', 0, N'1152217000006445005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (546, N'Tatiana Caceres', N'Tatyorozcod@hotmail.com', 0, N'1152217000006459005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (547, N'Carolina Barrera', N'carolina.barrera@penguinrandomhouse.com', 0, N'1152217000006459017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (548, N'odete viana', N'oviana2006@yahoo.com', 0, N'1152217000006459029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (549, N'Maylen Rodriguez', N'maylenfigueroa@yahoo.com', 0, N'1152217000006464033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (550, N'Joseph Santana', N'jpsmoto94@gmail.com', 0, N'1152217000006464045')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (551, N'Isabella Garcia', N'isabellagv@hotmail.com', 0, N'1152217000006488011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (552, N'Damara Ojeda', N'Damara.ojeda@gmail.com', 0, N'1152217000006505007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (553, N'ANA PAREDES', N'anacriss80@hotmail.com', 0, N'1152217000006514013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (554, N'Santiago Altamirano', N'Service.consulting@gmail.com', 0, N'1152217000006514025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (555, N'Denise Touriz', N'denisetouriz@gmail.com', 0, N'1152217000006525005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (556, N'Carlos Cabrejos', N'andr_030@hotmail.com', 0, N'1152217000006525017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (557, N'Miyuki Saito', N'momo08ks1334@yahoo.com', 0, N'1152217000006540017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (558, N'Michelle Moscol', N'moscolmichelle@gmail.com', 0, N'1152217000006557041')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (559, N'Aileen Rodriguez', N'bookvfxn@gmail.com', 0, N'1152217000006557053')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (560, N'Gina Kassis', N'ginakassis@hotmail.com', 0, N'1152217000006622013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (561, N'Jessy Bsereni', N'rrerri@hotmail.com', 0, N'1152217000006622025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (562, N'corina kassis', N'kassiscorina@gmail.com', 0, N'1152217000006622037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (563, N'Aixa Cortez', N'Aixagcortez@gmail.com', 0, N'1152217000006622051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (564, N'Adnel Iglesias', N'Lmacorona19@gmil.com', 0, N'1152217000006652003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (565, N'Silvana Barrios', N'Silvanitab@hotmail.com', 0, N'1152217000006679003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (566, N'Darma Vazquez', N'Darmalucia@gmail.com', 0, N'1152217000006714005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (567, N'Suzana Fernandes', N'suzanafernandes1@hotmail.com', 0, N'1152217000006745003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (568, N'Ambar Calero', N'Strongfamily68@yahoo.com', 0, N'1152217000006745015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (569, N'Adria Urrea', N'paolaurrea13@yahoo.com', 0, N'1152217000006746009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (570, N'Angel Fuentes-Seijo', N'afesteva24@gmail.com', 0, N'1152217000006758017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (571, N'Silvana Sancristobal', N'ssancristobal@gmail.com', 0, N'1152217000006779009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (572, N'Yessika Comesana', N'cesar190808@gmail.com', 0, N'1152217000006780011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (573, N'Nathalie Delgado', N'nathydg@hotmail.com', 0, N'1152217000006799019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (574, N'Katia Machado', N'katiamachado@gmail.com', 0, N'1152217000006800003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (575, N'Diego Rivera', N'dfrg2009@gmail.com', 0, N'1152217000006838005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (576, N'Barbara Fragoso', N'abbf7683@gmail.com', 0, N'1152217000006838017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (577, N'Brian Abreu', N'brian@microfixonline.com', 0, N'1152217000006880009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (578, N'Kanae Nakagaki', N'9783guss@gmail.com', 0, N'1152217000006899065')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (579, N'Belinda Leon', N'belindaleon777@gmail.com', 0, N'1152217000006942047')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (580, N'Marcos Reta', N'Yreta020@gnail.com', 0, N'1152217000006994015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (581, N'Diana Ramirez', N'dicar7@hotmail.com', 0, N'1152217000007021005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (582, N'Mayra Wells', N'wells.mayra@gmail.com', 0, N'1152217000007080005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (583, N'Humberto Gonzalez', N'bertg814@gmail.com', 0, N'1152217000007154021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (584, N'Marjorie Romero', N'Logreira81@gmail.com', 0, N'1152217000007156003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (585, N'Javier Baptista', N'Baptistajavier10@gmail.com', 0, N'1152217000007302007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (586, N'Carlos Delgado', N'Delgadogar88@aol.com', 0, N'1152217000007302019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (587, N'Jesus Naranjo', N'jenaca2011@gmail.com', 0, N'1152217000007319003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (588, N'Diana Moreno', N'Dianamorbri@yahoo.es', 0, N'1152217000007474005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (589, N'Deborah Stegani', N'dstegani@icloud.com', 0, N'1152217000007564027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (590, N'Jesus Becerra', N'chuchy650@yahoo.com', 0, N'1152217000007585003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (591, N'Johana Arias', N'Joha_arias30@hotmail.com', 0, N'1152217000007585015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (592, N'Karla Viloria', N'sofikarla1@gmail.com', 0, N'1152217000007597005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (593, N'Yailen Yanes', N'yailenyanes@gmail.com', 0, N'1152217000007597017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (594, N'Valerie Vilarino', N'val2750@hotmail.com', 0, N'1152217000007611003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (595, N'Priya Rametra', N'PriyaRametra@yahoo.com', 0, N'1152217000007624029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (596, N'Denia Garcia', N'dgarcia1590@yahoo.com', 0, N'1152217000007691003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (597, N'Yatzury Rojas', N'Yatnani@hotmail.com', 0, N'1152217000007691015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (598, N'Ana Lugo', N'Analigiawess@yahoo.com', 0, N'1152217000007707007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (599, N'John Acevedo', N'Johnacevedo88@gmail.com', 0, N'1152217000007707053')
GO
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (600, N'Teresa Campos', N'tcampos5@outlook.com', 0, N'1152217000007723011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (601, N'Hugo Cubillan', N'hugocubillan@gmail.com', 0, N'1152217000007723066')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (602, N'Rima Safi', N'Rimasafin@hotmail.com', 0, N'1152217000007725043')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (603, N'Liudmila Artiles', N'Liudmilaartiles@gmail.com', 0, N'1152217000007761007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (604, N'Karen Guayamo', N'Kguayamo@gmail.com', 0, N'1152217000007761019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (605, N'Bihter Uysal Gurel', N'bebeauy@gmail.com', 0, N'1152217000007761031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (606, N'ANA ORTIZ', N'anaisabella77@gmail.com', 0, N'1152217000007777021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (607, N'Yared Mai', N'Yrdauxi43@yahoo.com', 0, N'1152217000007797071')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (608, N'Juan Suarez', N'Jsunidrogas@hotmail.com', 0, N'1152217000007814003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (609, N'Aldo Beltran', N'aldobeltranh@gmail.com', 0, N'1152217000007814015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (610, N'Roselyn Ferrer', N'roselynferrer@hotmail.com', 0, N'1152217000007814027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (611, N'Neyde Albornoz', N'neydealbornoz@yahoo.com', 0, N'1152217000007830011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (612, N'Barbara Guerra', N'babylacubana@yahoo.com', 0, N'1152217000007830023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (613, N'Francis Montes de Oca', N'Francis.montesdeoca@gmail.com', 0, N'1152217000007834017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (614, N'Jessica Fernandez', N'jcfernandezvillena@hotmail.com', 0, N'1152217000007834029')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (615, N'Jose Santiago', N'jsantiago9936@gmail.com', 0, N'1152217000007835011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (616, N'Oscar Lopez', N'Bwtusa@gmail.com', 0, N'1152217000007835023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (617, N'Sandra Nakad', N'Sandra.nakad@gmail.com', 0, N'1152217000007852015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (618, N'Hernan Iregui', N'hernan.iregui@gmail.com', 0, N'1152217000007852027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (619, N'Francys Perez', N'francysperez@hotmail.com', 0, N'1152217000007852039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (620, N'Clara Alvarez', N'Claria@hotmail.com', 0, N'1152217000007852051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (621, N'Cindy Deras', N'cindyderas@gmail.com', 0, N'1152217000007852063')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (622, N'Emiliana Herrera', N'herrera.emiliana96@gmail.com', 0, N'1152217000007899005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (623, N'Manuela Herrera', N'manuherrera517@gmail.com', 0, N'1152217000007899017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (624, N'Yulianela Sosa', N'syulianela@yahoo.com', 0, N'1152217000007911009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (625, N'Migdalia Hernandez', N'migdaliah1973@gmail.com', 0, N'1152217000007912003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (626, N'Barbara Perez', N'Babi-84@hotmail.com', 0, N'1152217000007912015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (627, N'Viviana Garcia', N'Vigarcia2010@gmail.com', 0, N'1152217000007912027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (628, N'Alan Lerner', N'Lerneralan@hotmail.com', 0, N'1152217000007921017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (629, N'Dilian Wu', N'dilianwu9@gmail.com', 0, N'1152217000007965083')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (630, N'Paulo Prysiazny', N'Pauloprysiazny@hotmail.com', 0, N'1152217000007971027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (631, N'Mara Prysiazny', N'Obimara@hotmail.com', 0, N'1152217000007971039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (632, N'Gonzalo Concepcion', N'Gonzaloconcepcion13@hotmail.com', 0, N'1152217000007971101')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (633, N'Krishna Nagavolu', N'kris24n@gmail.com', 0, N'1152217000007971152')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (634, N'Elier Warvar', N'ewarvar@yahoo.com', 0, N'1152217000007995033')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (635, N'Fedra Vasquez', N'Fedrav@gmail.com', 0, N'1152217000008038011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (636, N'Maria fernanda Rodriguez', N'Mariarodriguezsalerni@gmail.com', 0, N'1152217000008058015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (637, N'Priscila Abdala', N'priscila.abdala@hotmail.com', 0, N'1152217000008083013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (638, N'Diana Giron', N'Dianagiron20@gmail.com', 0, N'1152217000008083025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (639, N'Karla Fuente', N'Karla.fuente1221@hotmail.com', 0, N'1152217000008117007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (640, N'Maria Casanova', N'Ale210478@hotmail.com', 0, N'1152217000008118050')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (641, N'Amani Wazira', N'amaniwazira2@gmail.com', 0, N'1152217000008148017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (642, N'Irma Montalvo', N'Imontalvo12081@gmail.com', 0, N'1152217000008158011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (643, N'VIVIANA GONZALEZ', N'Viviana.gonzalez1982@outlook.com', 0, N'1152217000008158023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (644, N'Suney Rodriguez', N'suneyrodriguez82@gmail.com', 0, N'1152217000008158035')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (645, N'Gerald Frasser', N'Gfrasser@gmail.com', 0, N'1152217000008211019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (646, N'Rossalis Martinez', N'rossalis@yahoo.com', 0, N'1152217000008211031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (647, N'Samantha Elchurafa', N'Samanthaelchurafa@gmail.com', 0, N'1152217000008211043')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (648, N'Lorette Kirchheimer', N'Aishahm88@hotmail.com', 0, N'1152217000008211055')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (649, N'Viviana Miranda', N'vivi.marin11@hotmail.com', 0, N'1152217000008212017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (650, N'Patricia Iversen', N'patricia.iversen@gmx.de', 0, N'1152217000008225009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (651, N'Angelly Coccaro', N'Angycoccaro@hotmail.com', 0, N'1152217000008241511')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (652, N'Jhoannev Agreda', N'jhoa_net@hotmail.com', 0, N'1152217000008241579')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (653, N'Massiel Gonzalez', N'massielez@gmail.com', 0, N'1152217000008257007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (654, N'Diana Osorio', N'Dianamar_osorio@hotmail.com', 0, N'1152217000008257019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (655, N'Herbert Portillo', N'hnetoport@mac.com', 0, N'1152217000008270005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (656, N'Maria Lorena Grijalva', N'Lorenagrijalva87@gmail.com', 0, N'1152217000008270017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (657, N'Vanessa Perez', N'Vanessa-75@live.com', 0, N'1152217000008272015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (658, N'Marcela Tabares', N'Mtabares96@gmail.com', 0, N'1152217000008288037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (659, N'Ester Mejia', N'emejia1985@gmail.com', 0, N'1152217000008289003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (660, N'Blanca Rodriguez', N'brrodriguez2007@gmail.com', 0, N'1152217000008289015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (661, N'Kary Cheda', N'karycheda@gmail.com', 0, N'1152217000008310027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (662, N'jose gomez', N'rokymez@hotmail.com', 0, N'1152217000008310039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (663, N'Laura Flores', N'lauraf_87@hotmail.com', 0, N'1152217000008332053')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (664, N'Maylin Rete', N'retma2001@yahoo.com', 0, N'1152217000008333003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (665, N'Yami Bibilonia', N'yamirete@yahoo.com', 0, N'1152217000008333015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (666, N'YANELIS ABREU PROENZA', N'yanelisa@gmail.com', 0, N'1152217000008333027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (667, N'Karina Calvo', N'Karinacalvo2014@yahoo.com', 0, N'1152217000008333088')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (668, N'Juan Elias', N'elias.juan+tennis@gmail.com', 0, N'1152217000008346013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (669, N'Doris Rodriguez', N'Dorissrodriguez@hotmail.com', 0, N'1152217000008348039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (670, N'Rosanna Perone', N'rosannaperone83@gmail.com', 0, N'1152217000008371027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (671, N'Antonio Rodriguez', N'Antoniojusa80@gmail.com', 0, N'1152217000008371039')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (672, N'Lanna Duverge', N'Lannaduverge@gmail.com', 0, N'1152217000008371051')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (673, N'Andres Santacruz', N'asantacruz@me.com', 0, N'1152217000008371063')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (674, N'Hector Sirght', N'Grupodelfin20@gmail.com', 0, N'1152217000008382075')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (675, N'Jessica Muniz', N'Jessyaniz@gmail.com', 0, N'1152217000008399025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (676, N'Jeremy Barrios', N'Ydla0002@gmail.com', 0, N'1152217000008399037')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (677, N'Mariut Paola Barroso Pulido', N'mariutbarroso@gmail.com', 0, N'1152217000008401007')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (678, N'NATALIA GUERRA', N'guenata80@gmail.com', 0, N'1152217000008401021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (679, N'Oscar Ojeda', N'Oscarojeda26@hotmail.com', 0, N'1152217000008428019')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (680, N'Antonella D’Agostino', N'antonelladagostinogm@gmail.com', 0, N'1152217000008429003')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (681, N'Laura fanfliet', N'laura@bpatax.com', 0, N'1152217000008429015')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (682, N'Arturo Rodriguez', N'belkys@universalmortgage.com', 0, N'1152217000008436045')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (683, N'MADELINE GUZMAN', N'madeline.r86@gmail.com', 0, N'1152217000008466005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (684, N'Karina De Jesús', N'Caroka2000@hotmail.com', 0, N'1152217000008466017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (685, N'Rebeca Garcia', N'rebecagarcia@hotmail.com', 0, N'1152217000008478025')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (686, N'Carmine (Carmelo) Tedino', N'ctedino@gmail.com', 0, N'1152217000008545009')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (687, N'ANGEL CABRERA', N'angelcabrerab@gmail.com', 0, N'1152217000008578011')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (688, N'Sadhasivam Angamuthu', N'sadhasivan@gmail.com', 0, N'1152217000008578023')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (689, N'Elizabeth Sabat', N'Elizabethsabat2@gmail.com', 0, N'1152217000008599031')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (690, N'Monica Hurtado', N'monisotoh2@gmail.com', 0, N'1152217000008601057')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (691, N'DANIEL TERAN', N'daniel_teranm@hotmail.com', 0, N'1152217000008624027')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (692, N'Claudia Shaw', N'claudiashaw123@comcast.net', 0, N'1152217000008624067')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (693, N'Marcela Roudenbush', N'celamiami@icloud.com', 0, N'1152217000008625013')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (694, N'Yarenys Gomez', N'yarenys_gp@yahoo.com', 0, N'1152217000008626061')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (695, N'7867128491 Sadra', N'Alanvalefranc972@gmail.com', 0, N'1152217000008626073')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (696, N'Laura Inclan', N'laura.ravelo@yahoo.com', 0, N'1152217000008660005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (697, N'Maria ortiz', N'maom12@yahoo.com', 0, N'1152217000008683005')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (698, N'Maricel Castillo', N'Maricastillo14@yahoo.com', 0, N'1152217000008683017')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (699, N'Stephanie Piedra', N'pepaniesuzuki@yahoo.com', 0, N'1152217000008683029')
GO
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (700, N'Jessyca Sosa', N'jsosa07@icloud.com', 0, N'1152217000008683041')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (701, N'Bruno Steiner', N'steinerbruno@hotmail.com', 0, N'1152217000008683073')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (702, N'Maria c Cárdenas', N'mc_cardenas@hotmail.com', 0, N'1152217000008684096')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (703, N'Gaby Vallejo', N'Ga_rival@hotmail.com', 0, N'1152217000008684146')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (704, N'Ivian Destro Boruchowski', N'ivianalfa@gmail.com', 0, N'1152217000008695021')
INSERT [dbo].[account] ([idAccount], [AccountName], [AccountEmail], [CreadistsInitials], [idProvider]) VALUES (705, N'Andrea Santander', N'andrealesantander@me.com', 0, N'1152217000008725007')
SET IDENTITY_INSERT [dbo].[account] OFF
SET IDENTITY_INSERT [dbo].[config] ON 

INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (1, N'ClientID', N'Identificador del cliente de zoho.', N'1000.0NH0VS1LLDF2G3PC3OURHWHCVWWLFD', N'Zoho', CAST(0x0000AD0C00000000 AS DateTime))
INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (2, N'ClientSecret', N'Clave secreta del cliente Zoho.', N'927ae28e9de50744d9e4a7dd2f2e333d15953da6a9', N'Zoho', CAST(0x0000AD0C00000000 AS DateTime))
INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (3, N'RedirectURL', N'Url de retorno de usuario de Zoho.', N'https://api.aleosapp.com/api/Authorized', N'Zoho', CAST(0x0000AD0C00000000 AS DateTime))
INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (5, N'AccessToken', N'Token de Zoho', N'1000.f8a0c8cc0abe9245fe67b74d53c1bd99.72bc709d00e7d201188d29a672de9335', N'Zoho', CAST(0x0000AD0D00FECC5D AS DateTime))
INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (6, N'TokenDate', N'Fecha de Ultimo Token', N'17/4/2021 6:20:53 p. m.', N'Zoho', CAST(0x0000AD0D00FEDC78 AS DateTime))
INSERT [dbo].[config] ([idConfig], [confName], [confDescriction], [confValue], [confGroup], [confDataUpdate]) VALUES (8, N'RefreshToken', N'Token necesario para renovar de Zoho', N'1000.376e8fb85839f45a005024987d2947dc.a57f41aeb49053d6431d6d5f9d4375b8', N'Zoho', CAST(0x0000AD0C00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[config] OFF
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([idRole], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[roles] ([idRole], [roleName]) VALUES (2, N'Coach')
INSERT [dbo].[roles] ([idRole], [roleName]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[roles] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([idUser], [userDNI], [userEmail], [userPhoneNumber], [userFirstname], [userLastname], [userUsername], [userPassword], [userAvatar], [userDateCreate], [userDateUpdate], [idRole], [userOldPassword]) VALUES (1, N'18482174', N'ing.javier.leal@outlook.com', N'+584166460661', N'Javier Jose', N'Leal Hurtado', N'jleal', N'MQA1AEsAMwAxAGsAMQBLAEwAMgA=', N'../../assets/Icons/UserRedd.PNG', CAST(0x0000ACF400000000 AS DateTime), CAST(0x0000ACFA017C557B AS DateTime), 1, NULL)
INSERT [dbo].[users] ([idUser], [userDNI], [userEmail], [userPhoneNumber], [userFirstname], [userLastname], [userUsername], [userPassword], [userAvatar], [userDateCreate], [userDateUpdate], [idRole], [userOldPassword]) VALUES (3, N'19545920', N'ing.olgeddie.ferrer@outlook.com', N'04129325457', N'Olgeddie', N'Ferrer', N'oferrer', N'MQAyADMANAA1ADYA', N'../../assets/Icons/UserRedd.PNG', CAST(0x0000ACFA013243FC AS DateTime), CAST(0x0000ACFA013243FC AS DateTime), 1, N'')
SET IDENTITY_INSERT [dbo].[users] OFF
