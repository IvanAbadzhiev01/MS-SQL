SELECT m.MountainRange, PeakName, Elevation FROM Peaks as p
JOIN Mountains as m ON m.id = p.MountainId
WHERE MountainId = 17
ORDER BY Elevation DESC