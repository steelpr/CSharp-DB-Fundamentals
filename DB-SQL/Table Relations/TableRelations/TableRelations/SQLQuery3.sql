CREATE DATABASE ProblemSix

CREATE TABLE Majors(
MajorID INT NOT NULL,
[Name] VARCHAR(50) NOT NULL,

CONSTRAINT PK_Majors PRIMARY KEY (MajorID)
)

CREATE TABLE Subjects(
SubjectID INT NOT NULL,
SubjectName VARCHAR(50) NOT NULL,

CONSTRAINT PK_Subjects PRIMARY KEY (SubjectID)
)

CREATE TABLE Students(
StudentID INT NOT NULL,
StudentNumber INT NOT NULL,
StudentName VARCHAR(50) NOT NULL,
MajorID INT NOT NULL,

CONSTRAINT PK_Students PRIMARY KEY (StudentID),
CONSTRAINT FK_Students_Majors FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)

CREATE TABLE Payments(
PaymentID INT NOT NULL,
PaymentDate DATE,
PaymentAmount INT NOT NULL,
StudentID INT NOT NULL,

CONSTRAINT PK_Payments PRIMARY KEY (PaymentID),
CONSTRAINT FK_Payments_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)

CREATE TABLE Agenda(
StudentID INT NOT NULL,
SubjectID INT NOT NULL,

CONSTRAINT PK_Agenda PRIMARY KEY (StudentID, SubjectID),
CONSTRAINT FK_Agenda_Subject FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
CONSTRAINT FK_Agenda_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)