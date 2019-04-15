SELECT tblEvent.EventName, tblEvent.EventDate, 
(SELECT CountryName FROM tblCountry WHERE tblCountry.CountryID = tblEvent.CountryID)
FROM tblEvent
WHERE tblEvent.EventDate > (
SELECT MAX(tblEvent.EventDate)
FROM tblEvent
WHERE tblEvent.CountryID = 21)
ORDER BY tblEvent.EventDate DESC;