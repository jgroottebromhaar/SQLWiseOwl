SELECT EventName, CONVERT(varchar, EventDate, 106) AS 'Event date', 
DATEDIFF(DAY, '1994/07/31', EventDate) AS 'Days offset', 
ABS(DATEDIFF(DAY, '1994/07/31', EventDate)) AS 'Days difference' 
FROM tblEvent
ORDER BY [Days difference];