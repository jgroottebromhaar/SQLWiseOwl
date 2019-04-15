SELECT Countryname 
FROM tblCountry 
WHERE (SELECT COUNT(CountryID) FROM tblEvent WHERE tblEvent.CountryID = tblCountry.CountryID) > 8
ORDER BY Countryname;