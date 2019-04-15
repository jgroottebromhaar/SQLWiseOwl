SELECT tblContinent.ContinentName AS 'Continent', 
tblCountry.CountryName AS 'Country', 
COUNT(tblEvent.EventID) AS 'Number of events' 
FROM tblContinent
INNER JOIN tblCountry ON tblContinent.ContinentID = tblCountry.ContinentID
INNER JOIN tblEvent ON tblCountry.CountryID = tblEvent.CountryID
WHERE tblContinent.ContinentName != 'Europe'
GROUP BY tblContinent.ContinentName, tblCountry.CountryName
HAVING COUNT(tblEvent.EventID) > 5
ORDER BY tblCountry.CountryName;