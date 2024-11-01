SELECT  CASE
   WHEN Age >= 61 THEN '[61+]'
   WHEN Age >= 51 THEN '[51-60]'
   WHEN Age >= 41 THEN '[41-50]'
   WHEN Age >= 31 THEN '[31-40]'
   WHEN Age >= 21 THEN '[21-30]'
   WHEN Age >= 11 THEN '[11-20]'
   WHEN Age >= 0 THEN '[0-10]'


  END AS AgeGroup, COUNT(Age)AS WizardCount FROM WizzardDeposits
GROUP BY
  CASE
   WHEN Age >= 61 THEN '[61+]'
   WHEN Age >= 51 THEN '[51-60]'
   WHEN Age >= 41 THEN '[41-50]'
   WHEN Age >= 31 THEN '[31-40]'
   WHEN Age >= 21 THEN '[21-30]'
   WHEN Age >= 11 THEN '[11-20]'
   WHEN Age >= 0 THEN '[0-10]'


  END