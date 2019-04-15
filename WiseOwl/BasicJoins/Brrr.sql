SELECT tblEvent.EventName, tblEvent.EventDate, tblCountry.CountryName, tblContinent.ContinentName 
FROM ((tblContinent
INNER JOIN tblCountry ON tblCountry.ContinentID = tblContinent.ContinentID)
INNER JOIN tblEvent ON tblCountry.CountryID = tblEvent.CountryID)
WHERE tblCountry.CountryName LIKE 'Russia' OR tblContinent.ContinentName LIKE 'Antarctic';