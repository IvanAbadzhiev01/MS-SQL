SELECT 
mc.CountryCode,
m.MountainRange,
p.PeakName,
p.Elevation
FROM Mountains AS m
JOIN MountainsCountries AS mc ON m.Id = mc.MountainId AND mc.CountryCode = 'BG'
JOIN Peaks AS p ON m.Id = p.MountainId AND p.Elevation > 2835
ORDER BY p.Elevation DESC

