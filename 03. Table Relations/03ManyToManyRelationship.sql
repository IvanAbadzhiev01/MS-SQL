CREATE TABLE Students(
	StudentID INT PRIMARY KEY IDENTITY(1,1),
	[Name] VARCHAR(50)
);

CREATE TABLE Exams(
	ExamID INT PRIMARY KEY IDENTITY(101,1),
	[Name] VARCHAR(50)
);

CREATE TABLE StudentsExams(
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
	ExamID INT FOREIGN KEY REFERENCES Exams(ExamID),
	PRIMARY KEY(StudentID, ExamID)
);


INSERT INTO Students
VALUES 
('Mila'),
('Toni'),
('Ron');

INSERT INTO Exams
VALUES 
('SpringMVC'),
('Neo4j'),
('Oracle 11g');


INSERT INTO StudentsExams
VALUES 
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103);

