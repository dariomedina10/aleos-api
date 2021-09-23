ALTER PROCEDURE [dbo].[ACCOUNT_ALL] 
AS
BEGIN
    SELECT [idAccount]
        ,[AccountName]
        ,[AccountEmail]
        ,[CreadistsInitials]
        ,[idProvider]
        ,[AccountPhone]
        ,[AccountMobile]
        ,CONVERT(varchar,[DateCreate],22) as DateCreate
        ,FORMAT([DateCreate], 'yyyyMMdd') as DateCreateOrder
    FROM [dbo].[account]
END