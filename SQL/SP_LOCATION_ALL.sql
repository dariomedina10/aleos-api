ALTER PROCEDURE [dbo].[LOCATION_ALL] 
AS
BEGIN
SELECT l.idLocation,
      l.LocName,
      l.LocNickName,
      l.LocImage,
      l.LocActive,
      l.Loc_idLocation,
	  ll.LocName as LocParentName,
      l.LocAddress,
      l.LocGeo,
      l.Color
  FROM [dbo].[locations] l
  LEFT JOIN locations ll on ll.idLocation = l.Loc_idLocation
END
