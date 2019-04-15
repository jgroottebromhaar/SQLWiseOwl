SELECT tblCategory.CategoryName, COUNT(tblEvent.EventID) AS 'Number of events' 
FROM tblCategory
INNER JOIN tblEvent ON tblCategory.CategoryID = tblEvent.CategoryID
GROUP BY tblCategory.CategoryName
ORDER BY [Number of events] DESC;