ALTER PROCEDURE [dbo].[PLAYER_NOT_GROUP_BY_GROUP]
	@group_id int,
	@name varchar(100),
	@group_Id_filter int
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
		,P.idLocation
		FROM [dbo].[players] P
		LEFT JOIN account A on A.idProvider= P.idAccount
		LEFT JOIN levels L on L.idLevels = P.idLevel
		LEFT JOIN groupPlayer GP on gp.idPlayer = P.idPlayer and gp.idGroup=@group_Id_filter
	) G
	WHERE G.idGroup != @group_id AND G.idGroup = @group_Id_filter AND  (G.FullName like '%'+ @name +'%' OR G.AccountName like '%'+ @name +'%')
	GROUP BY idPlayer,plaFistName,plaLastName,plaGender,AccountName,YearsOld,LevName,plaImage
END