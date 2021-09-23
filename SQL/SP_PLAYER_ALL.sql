ALTER PROCEDURE [dbo].[PLAYER_ALL] 
AS
BEGIN
SELECT [idPlayer]
      ,([plaFistName] + ' ' + [plaLastName]) as FullName
      ,[plaFistName]
      ,[plaLastName]
      ,[plaImage]
      ,[plaEmail]
      ,[plaPhoneNumber]
      ,FORMAT(plaBirthDate, 'MM-dd-yyyy') as plaBirthDate 
	  ,[plaGender]
      ,[idLevel]
      ,P.[idProvider]
      ,P.[idAccount]
      ,[idLocation]
      ,[NameSecundaryContact]
      ,[phoneNumberSecudary]
	  ,A.AccountName
	  ,YEAR(GETDATE()) - FORMAT(plaBirthDate, 'yyyy') as YearsOld
	  ,L.LevName
      ,CONVERT(varchar,P.[DateCreate],22) as DateCreate
      ,FORMAT(P.[DateCreate], 'yyyyMMdd') as DateCreateOrder
  FROM [dbo].[players] P
  Left JOIN account A on A.idProvider = P.idAccount
  LEFT JOIN levels L on L.idLevels = P.idLevel
  ORDER BY P.[dateCreate] DESC
END