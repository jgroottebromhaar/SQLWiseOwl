SELECT EventName,
CASE WHEN DATENAME(DAY, EventDate) = 1 THEN DATENAME(WEEKDAY, EventDate) + ' ' + DATENAME(DAY, EventDate) + 'st ' + DATENAME(MONTH, EventDate) + ' ' + DATENAME(YEAR, EventDate)
	 WHEN DATENAME(DAY, EventDate) = 2 THEN DATENAME(WEEKDAY, EventDate) + ' ' + DATENAME(DAY, EventDate) + 'nd ' + DATENAME(MONTH, EventDate) + ' ' + DATENAME(YEAR, EventDate)
	 WHEN DATENAME(DAY, EventDate) = 3 THEN DATENAME(WEEKDAY, EventDate) + ' ' + DATENAME(DAY, EventDate) + 'rd ' + DATENAME(MONTH, EventDate) + ' ' + DATENAME(YEAR, EventDate)
	 ELSE DATENAME(WEEKDAY, EventDate) + ' ' + DATENAME(DAY, EventDate) + 'th ' + DATENAME(MONTH, EventDate) + ' ' + DATENAME(YEAR, EventDate)
END AS 'True full date'
FROM tblEvent
ORDER BY EventDate;