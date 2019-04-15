SELECT EventName, EventDate AS 'NotFormatted', FORMAT(EventDate, 'd', 'zu') AS 'UsingFormat', CONVERT(varchar, EventDate, 101) AS 'UsingConvert' 
FROM tblEvent
WHERE YEAR(EventDate) = 1994;