ALTER PROCEDURE [dbo].[PLAYER_NOT_GROUP]
	@group_id int,
	@name varchar(100)
AS
BEGIN
	SELECT idPlayer,plaFistName,plaLastName,plaGender,AccountName,YearsOld,LevName
		,plaImage,SUM(idGroup) FROM
	(
		SELECT P.[idPlayer]
		,CONCAT([plaFistName],' ',[plaLastName]) AS FullName
		,[plaFistName]
		,[plaLastName]
		,[plaGender]
		,A.AccountName
		,YEAR(GETDATE()) - FORMAT(plaBirthDate, 'yyyy') as YearsOld
		,L.LevName
		
		,plaImage
		,ISNULL(GP.idGroup, 0) idGroup
		FROM [dbo].[players] P
		Left JOIN account A on A.idProvider= P.idAccount
		Left JOIN levels L on L.idLevels = P.idLevel
		left JOIN groupPlayer GP on gp.idPlayer = P.idPlayer and gp.idGroup=@group_id
	) G
	WHERE G.idGroup != @group_id AND (G.FullName like '%'+ @name +'%' OR G.AccountName like '%'+ @name +'%')
	GROUP BY idPlayer,plaFistName,plaLastName,plaGender,AccountName,YearsOld,LevName
		,plaImage
END