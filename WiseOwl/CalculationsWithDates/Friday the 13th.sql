SELECT EventName, EventDate, 
DATENAME(WEEKDAY, EventDate) AS 'Days of week', 
DATENAME(DAY, EventDate) AS 'Days number'
FROM tblEvent
WHERE DATENAME(WEEKDAY, EventDate) = 'Friday' AND DATENAME(DAY, EventDate) = 13
OR DATENAME(WEEKDAY, EventDate) = 'Thursday' AND DATENAME(DAY, EventDate) = 12
OR DATENAME(WEEKDAY, EventDate) = 'Saturday' AND DATENAME(DAY, EventDate) = 14;