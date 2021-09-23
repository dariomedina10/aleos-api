ALTER PROCEDURE [dbo].[PLAYER_NOT_GROUP_BY_OLD]
	@group_id int,
	@name varchar(100),
	@old int
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
		INNER JOIN locations lC ON LC.idLocation = P.idLocation
		LEFT JOIN account A on A.idProvider= P.idAccount
		LEFT JOIN levels L on L.idLevels = P.idLevel
		LEFT JOIN groupPlayer GP on gp.idPlayer = P.idPlayer and gp.idGroup=@group_id
	) G
	WHERE G.idGroup != @group_id AND YearsOld = @old AND  (G.FullName like '%'+ @name +'%' OR G.AccountName like '%'+ @name +'%')
	GROUP BY idPlayer,plaFistName,plaLastName,plaGender,AccountName,YearsOld,LevName,plaImage
END