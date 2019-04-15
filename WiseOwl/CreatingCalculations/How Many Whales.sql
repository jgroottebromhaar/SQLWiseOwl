SELECT Country, KmSquared, (KmSquared / 20761) AS 'WalesUnits', (KmSquared % 20761) AS 'AreaLeftOver', 
CASE WHEN (KmSquared / 20761) = 0 THEN 'Smaller then Wales' 
	 WHEN (KmSquared / 20761) > 0 THEN CAST(KmSquared / 20761 AS varchar) + ' x Wales plus ' +  CAST(KmSquared % 20761 AS varchar) + ' sq. km.' 
END  AS 'WalesComparison'
FROM tblCountriesByArea
ORDER BY ABS(KmSquared - 20761);