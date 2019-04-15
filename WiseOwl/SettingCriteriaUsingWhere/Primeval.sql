--SELECT * FROM tblEvent
--WHERE CategoryID != 14 AND EventDetails LIKE '%Train%';
--Returns 4 rows


--SELECT * FROM tblEvent
--WHERE CountryID = 13 AND (UPPER(EventName) NOT LIKE '%SPACE%' 
--AND UPPER(EventDetails) NOT LIKE '%SPACE%');
--Returns 6 rows


--SELECT * FROM tblEvent
--WHERE CategoryID IN (5, 6) 
--AND (EventDetails NOT LIKE '%War%' AND EventDetails NOT LIKE '%Death%');
--Returns 91 rows