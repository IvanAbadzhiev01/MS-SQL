SELECT 
    p.PeakName AS PeakName, 
    r.RiverName AS RiverName, 
    CONCAT(LOWER(p.PeakName), LOWER(SUBSTRING(r.RiverName, 2, LEN(r.RiverName)))) AS Mix
FROM 
    Peaks p
JOIN 
    Rivers r 
	ON 
    LOWER(SUBSTRING(p.PeakName, LEN(p.PeakName), 1)) = LOWER(SUBSTRING(r.RiverName, 1, 1))
ORDER BY Mix;
