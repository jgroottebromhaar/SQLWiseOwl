SELECT tblCountry.CountryName 
FROM tblEvent 
FULL OUTER JOIN tblCountry ON tblEvent.CountryID = tblCountry.CountryID
WHERE tblEvent.EventID IS NULL;