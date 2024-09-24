SELECT 
mc.CountryCode,
COUNT(mc.CountryCode) AS MountainRanges
FROM Mountains AS m
JOIN MountainsCountries AS mc ON mc.MountainId = m.Id AND mc.CountryCode IN ('BG', 'US', 'RU')
GROUP BY mc.CountryCode