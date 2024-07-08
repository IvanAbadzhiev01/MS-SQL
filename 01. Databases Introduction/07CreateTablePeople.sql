CREATE TABLE People(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	CHECK (DATALENGTH(Picture) <= 2000000),
	Height DECIMAL(3,2),
	Weight DECIMAL(5,2),
	Gender CHAR(1) NOT NULL,
	CHECK (Gender = 'f' OR Gender = 'm'),
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX),

)




INSERT INTO People(Name, Height, Weight, Gender, Birthdate)
VALUES		('Pesho', 1.90, 80.0, 'm', '2000-05-01'),
			('Gosho', 1.73, 82.0, 'm', '2001-06-21'),
			('Misho', 1.74, 79.0, 'm', '2002-07-21'),
			('Silvi', 1.62, 40.0, 'f', '2003-08-11'),
			('Tosho', 1.70, 68.0, 'm', '2004-09-10')
