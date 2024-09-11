CREATE DATABASE [Table Relations]


CREATE TABLE Passports(
	PassportID INT PRIMARY KEY IDENTITY(101,1),
	PassportNumber VARCHAR(50)
);


CREATE TABLE Persons(
	PersonID INT PRIMARY KEY IDENTITY(1,1)
	,FirstName VARCHAR(50)
	,Salary DECIMAL(7,2)
	,PassportID INT FOREIGN KEY REFERENCES Passports(PassportID)


);
 
 INSERT INTO Passports(PassportNumber)
VALUES 
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2');

INSERT INTO Persons(FirstName, Salary, PassportID)
VALUES  
('Roberto', 43300.00, 102),
('Tom', 56100.00, 103),
('Yana', 60200.00, 101);


