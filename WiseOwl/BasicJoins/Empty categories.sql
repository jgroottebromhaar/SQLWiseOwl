SELECT tblEvent.EventName, tblEvent.EventDate, tblCategory.CategoryName 
FROM tblEvent
RIGHT OUTER JOIN tblCategory ON tblEvent.CategoryID = tblCategory.CategoryID
WHERE tblCategory.CategoryName = 'Alien life' OR tblCategory.CategoryName = 'Old';