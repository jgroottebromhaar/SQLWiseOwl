SELECT tblContinent.ContinentName, tblEvent.EventName 
FROM tblEvent
INNER JOIN tblCountry ON tblEvent.CountryID = tblCountry.CountryID
INNER JOIN tblContinent ON tblCountry.ContinentID = tblContinent.ContinentID
WHERE tblContinent.ContinentName IN 
(SELECT TOP 3 tblContinent.ContinentName FROM tblEvent
INNER JOIN tblCountry ON tblEvent.CountryID = tblCountry.CountryID
INNER JOIN tblContinent ON tblCountry.ContinentID = tblContinent.ContinentID
GROUP BY tblContinent.ContinentName
ORDER BY COUNT(tblEvent.EventID));