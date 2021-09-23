CREATE OR ALTER PROCEDURE [dbo].[DASHBOARD_PLAYER] 
AS
BEGIN
SELECT TOP 20 P.[idPlayer]
      ,CONCAT(P.[plaFistName], ' ', P.plaLastName) AS PlayerName
      ,A.AccountName
      ,P.[plaEmail]
      ,P.[plaPhoneNumber]
	  ,L.LevName
	  ,CONVERT(varchar,P.dateCreate,22) as dateCreate
  FROM [dbo].[players] P
  INNER JOIN account A on A.idProvider = P.idAccount
  LEFT JOIN levels L on L.idLevels = P.idLevel
  ORDER BY P.[dateCreate] DESC
END