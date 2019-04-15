SELECT tblEvent.EventName + ' (category ' + CAST(tblCategory.CategoryID AS varchar) + ')' AS 'Event (category)', tblEvent.EventDate 
FROM tblEvent
INNER JOIN tblCategory ON tblEvent.CategoryID = tblCategory.CategoryID
WHERE tblEvent.CountryID = 1;