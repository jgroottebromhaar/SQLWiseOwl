SELECT LEFT(tblCategory.CategoryName, 1) AS 'Category initial', 
COUNT(tblEvent.EventID) AS 'Number of events',
CONVERT(decimal(10, 2), ROUND(AVG(CAST(LEN(tblEvent.EventName) AS float) ), 2)) AS 'Average event name length'
FROM tblCategory
INNER JOIN tblEvent ON tblCategory.CategoryID = tblEvent.CategoryID
GROUP BY LEFT(tblCategory.CategoryName, 1);