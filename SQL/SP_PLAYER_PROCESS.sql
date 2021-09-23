CREATE OR ALTER PROCEDURE [dbo].[PLAYER_PROCESS] 
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
	@idAccount varchar(50),
	@idLocation int,
	@date datetime
AS
BEGIN
IF NOT EXISTS (SELECT * FROM players WHERE idProvider = @idProvider and idAccount = @idAccount)
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
           ,[phoneNumberSecudary]
		   ,[dateUpdate]
		   ,[dateCreate])
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
           ,@phoneSecundaryContact
		   ,GETDATE()
		   ,@date)
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
          ,[idLocation] = @idLocation
          ,[NameSecundaryContact] = @nameSecundaryContact
          ,[phoneNumberSecudary] = @phoneSecundaryContact
	      ,[dateUpdate] = GETDATE()
     WHERE idProvider = @idProvider and idAccount = @idAccount
END
END