SELECT TOP 5
c.CountryName,
r.RiverName
FROM Countries AS c
LEFT JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode AND c.ContinentCode = 'AF'
LEFT JOIN Rivers AS r ON cr.RiverId = r.id 
WHERE c.ContinentCode = 'AF'
ORDER BY c.CountryName



