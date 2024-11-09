SELECT DepartmentID,
       MAX(salary) AS ThirdHighestSalary
FROM (
    SELECT DepartmentID,
           Salary,
           DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS salary_rank
    FROM Employees
) AS ranked_salaries
WHERE salary_rank = 3
GROUP BY DepartmentID;