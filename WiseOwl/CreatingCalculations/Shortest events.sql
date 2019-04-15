SELECT tblEvent.EventName, LEN(tblEvent.EventName) as 'Length of name' 
FROM tblEvent
ORDER BY 'Length of name' ASC;