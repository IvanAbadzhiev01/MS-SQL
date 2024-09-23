SELECT 
FirstName,
LastName,
HireDate,
d.[Name] AS DeptName
FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID AND d.[Name] IN ('Sales', 'Finance') AND YEAR(e.HireDate) > 1999
ORDER BY HireDate