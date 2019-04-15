SELECT EventName, 
CASE
    WHEN LOWER(LEFT(EventName, 1)) IN ('a', 'e', 'o', 'u', 'i') AND 
		 LOWER(RIGHT(EventName, 1)) IN ('a', 'e', 'o', 'u', 'i') THEN 'Begins and ends with a vowel'
    WHEN LOWER(LEFT(EventName, 1)) = LOWER(RIGHT(EventName, 1)) THEN 'Same letter' 
END AS 'Verdict'
FROM tblEvent
WHERE CASE
    WHEN LOWER(LEFT(EventName, 1)) IN ('a', 'e', 'o', 'u', 'i') AND 
		 LOWER(RIGHT(EventName, 1)) IN ('a', 'e', 'o', 'u', 'i') THEN 'Begins and ends with a vowel'
    WHEN LOWER(LEFT(EventName, 1)) = LOWER(RIGHT(EventName, 1)) THEN 'Same letter' 
END IS NOT NULL
ORDER BY EventDate;