ALTER PROCEDURE [dbo].[ACCOUNT_PROCESS] 
	@account_id int,
	@name varchar(50),
	@email varchar(50),
	@credits int,
	@idProvider varchar(50),
	@phone varchar(50),
	@mobile varchar(50),
	@date datetime
AS
BEGIN
IF EXISTS (SELECT * FROM account WHERE idProvider = @idProvider)
BEGIN   
UPDATE [dbo].[account]
   SET [AccountName] = @name
      ,[AccountEmail] = @email
      ,[CreadistsInitials] = @credits
      ,[idProvider] = @idProvider
	  ,[AccountPhone] = @phone
	  ,[AccountMobile] = @mobile
 WHERE idProvider = @idProvider
END
ELSE  
BEGIN
INSERT INTO [dbo].[account]
           ([AccountName]
           ,[AccountEmail]
           ,[CreadistsInitials]
           ,[idProvider]
		   ,[AccountPhone]
		   ,[AccountMobile]
		   ,[DateCreate])
     VALUES
           (@name
           ,@email
           ,@credits
           ,@idProvider
		   ,@phone
		   ,@mobile
		   ,@date)
END
END
