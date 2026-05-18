CREATE DATABASE SchoolDATABASEEEAHHAAH;
GO

USE SchoolDATABASEEEAHHAAH;
GO

CREATE TABLE Students (
StudentID INT PRIMARY KEY IDENTITY(1,1),
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Email NVARCHAR(100) NOT NULL UNIQUE,
EnrollmentDate DATE NOT NULL
);

CREATE TABLE Courses (
CourseID INT PRIMARY KEY IDENTITY(1,1),
Title NVARCHAR(100) NOT NULL,
Credits INT NOT NULL
);

CREATE TABLE Enrollments (
EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
StudentID INT NOT NULL,
CourseID INT NOT NULL,
Grade DECIMAL (3,2) NULL,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate) VALUES
("Ivan", "Ivanov", "ivan@school.bg", "2024-09-15"),
("Maria", "Petrova", "maria@school.bg", "2024-09-15");

INSERT INTO Courses (Title, Credits) VALUES
("Data base", 5),
("Programming in C#", 6);