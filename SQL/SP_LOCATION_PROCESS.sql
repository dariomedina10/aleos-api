ALTER PROCEDURE [dbo].[LOCATION_PROCESS] 
	@location_id int,
	@name varchar(45),
	@nick varchar(45),
	@image varchar(max),
	@active bit,
	@location_id_parent int,
	@address varchar(150),
	@geo varchar(45),
    @color varchar(10)
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
                   ,[LocGeo]
                   ,[Color])
             VALUES
                   (@name
                   ,@nick
                   ,@image
                   ,@active
                   ,@location_id_parent
                   ,@address
                   ,@geo
                   ,@color)
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
              ,[Color] = @color
         WHERE idLocation = @location_id
    END
END