SELECT CASE
    WHEN YEAR(tblEvent.EventDate) LIKE '17%' THEN '18th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '18%' THEN '19th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '19%' THEN '20th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '20%' THEN '21st century'
END AS 'Century', COUNT(tblEvent.EventID) AS 'Number events' 
FROM tblEvent
GROUP BY CUBE(CASE
    WHEN YEAR(tblEvent.EventDate) LIKE '17%' THEN '18th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '18%' THEN '19th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '19%' THEN '20th century'
    WHEN YEAR(tblEvent.EventDate) LIKE '20%' THEN '21st century'
END)
ORDER BY [Century];