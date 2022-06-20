CREATE DATABASE Academy

USE Academy

CREATE TABLE Groups
(
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) UNIQUE NOT NULL
)

CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL,
	Surname NVARCHAR(50) NOT NULL,
	GroupID INT FOREIGN KEY REFERENCES Groups(ID)
)

ALTER TABLE Students Add Grade INT

INSERT INTO GROUPS (Name)
VALUES
(
	'P129'
)

INSERT INTO GROUPS (Name)
VALUES
(
	'P124'
)

INSERT INTO GROUPS (Name)
VALUES
(
	'P221'
)

INSERT INTO Students (Name, Surname, GroupID, Grade)
VALUES
(
	'Ismayil', 'Jabbarli', 3, 88
)

INSERT INTO Students (Name, Surname, GroupID, Grade)
VALUES
(
	'Elon', 'Musk', 1, 77
)
INSERT INTO Students (Name, Surname, GroupID, Grade)
VALUES
(
	'Bill', 'Gates', 1, 43
)
INSERT INTO Students (Name, Surname, GroupID, Grade)
VALUES
(
	'Joe', 'Bides', 1, 78
)

SELECT * FROM Students WHERE Students.GroupID = 1

SELECT GROUPS.NAME, COUNT(*) FROM STUDENTS JOIN GROUPS ON Students.GroupID = Groups.ID GROUP BY Groups.Name 

CREATE VIEW EXAMPLEfdsds
AS
SELECT Students.Name, Surname, Grade FROM Students JOIN GROUPS ON Students.GroupID = Groups.id





