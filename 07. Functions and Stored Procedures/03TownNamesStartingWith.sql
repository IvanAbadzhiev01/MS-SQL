
CREATE OR ALTER PROC usp_GetTownsStartingWith(@Leter VARCHAR(5) = 'b')
AS
(
SELECT [Name] FROM Towns
WHERE [Name] LIKE @Leter + '%'
)
EXEC usp_GetTownsStartingWith 