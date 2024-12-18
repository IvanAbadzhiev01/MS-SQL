SELECT * INTO EmployeesAS FROM Employees
WHERE Salary > 30000

DELETE FROM EmployeesAS
WHERE ManagerID = 42

UPDATE EmployeesAS
SET [Salary] += 5000
WHERE [DepartmentID] = 1

SELECT [DepartmentID],
    AVG([Salary]) as [AverageSalary]
FROM EmployeesAS
GROUP BY [DepartmentID]