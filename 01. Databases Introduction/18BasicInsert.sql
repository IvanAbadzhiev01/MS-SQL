CREATE TABLE Towns(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL
);

CREATE TABLE Addresses(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	AddressText VARCHAR(250) NOT NULL,
	TownId INT FOREIGN KEY REFERENCES Towns(Id)
);

CREATE TABLE Departments(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	FirstName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	JobTitle VARCHAR(50) NOT NULL,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id),
	HireDate DATETIME2,
	Salary DECIMAL(7,2),
	AddressId INT FOREIGN KEY REFERENCES Addresses(Id),
	

);

INSERT INTO Towns(Name)
VALUES 
       ('Sofia'),
	   ('Plovdiv'),
	   ('Varna'),
	   ('Burgas')

INSERT INTO Departments(Name)
VALUES  
	    ('Engineerung'),
		('Sales'),
		('Marketing'),
		('Software Development'),
		('Quality Assurence')

INSERT INTO Employees(FirstName, MiddleName, LastName, JobTitle, DepartmentId,HireDate, Salary)
VALUES 
	   ('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '05/02/2024', 3500.00),
	   ('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '05/02/2024', 4000.00),
	   ('Maria', 'Petrova', 'Ivanov', 'Intern', 1, '05/02/2024', 525.25),
	   ('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '05/02/2024', 3000.00),
	   ('Peter', 'Pan', 'Pan', 'Intern', 3, '05/02/2024', 3500.00)

	  