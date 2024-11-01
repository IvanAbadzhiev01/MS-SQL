SELECT 
SUM(t1.DepositAmount - t2.DepositAmount) AS SumDifference
FROM WizzardDeposits AS t1
JOIN WizzardDeposits AS t2 ON t1.Id = t2.Id - 1


