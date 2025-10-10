USE master
GO

CREATE DATABASE EventManagementDB
go

use EventManagementDB
go

CREATE TABLE Occasions (
Id INT PRIMARY KEY IDENTITY NOT NULL,
OccasionName varchar (50) NOT NULL,
OccasionDate date NOT NULL,
[Description] varchar(100)
)

CREATE TABLE Users (
Id int PRIMARY KEY IDENTITY NOT NULL,
UserFName Varchar (20) NOT NULL,
UserLName varchar (20) NOT NULL,
Email Varchar (30),
PhoneNumber varchar (20) NOT NULL,
PresentAddress varchar (50) NOT NULL,
PermanentAddress varchar (50)
)

CREATE TABLE Employees (
Id int PRIMARY KEY IDENTITY NOT NULL,
EmployeesFName varchar (20) NOT NULL,
EmployeesLName varchar (20) NOT NULL,
Email varchar (20) NOT NULL,
PhoneNumber varchar (20) NOT NULL,
PresentAddress varchar (50) NOT NULL,
PermanentAddress varchar (50)
)

CREATE TABLE Task (
Id INT PRIMARY KEY IDENTITY NOT NULL,
StartTime varchar NOT NULL,
EndTime varchar NOT NULL,
[Weight] INT NOT NULL,
[Status] BIT NOT NULL
)

