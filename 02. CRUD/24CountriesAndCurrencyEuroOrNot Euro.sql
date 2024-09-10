SELECT CountryName, CountryCode,
CASE 
WHEN CurrencyCode = 'EUR' THEN 'Euro'
WHEN NOT(CurrencyCode = 'EUR') THEN 'Not Euro' 
WHEN CurrencyCode IS NULL THEN 'Not Euro'

END [Currency]  FROM Countries
ORDER BY CountryName