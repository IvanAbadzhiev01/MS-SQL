SELECT TOP 5
EmployeeID,
JobTitle,
e.AddressId,
a.AddressText
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID
ORDER BY AddressID
