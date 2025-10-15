USE master
GO

/****** Object:  Database EventManagement     ******/
IF DB_ID('EventManagement') IS NOT NULL
	DROP DATABASE EventManagement
GO

CREATE DATABASE EventManagement
GO 

USE [EventManagement]
GO


CREATE TABLE Clients
(
Id INT PRIMARY KEY NOT NULL,
CompanyName VARCHAR (100) NULL,
Email VARCHAR (100) NOT NULL,
Phone VARCHAR (13) NOT NULL
)


CREATE TABLE Events
(  
Id INT PRIMARY KEY NOT NULL,
[EventName] VARCHAR (30) NOT NULL,
ClientsId INT FOREIGN KEY REFERENCES Clients(Id) NOT NULL, --O
EventType TEXT CHECK( EventType IN('Conference','Wedding','Concert','Party','Seminar','Other'))
)


CREATE TABLE Venue
(
VenueID INT PRIMARY KEY IDENTITY(1,1) ,
[Address] VARCHAR (100) NOT NULL,
EventId INT FOREIGN KEY  REFERENCES Events(Id) NOT NULL,
Capacity INT NOT NULL,
ContactPerson VARCHAR(50) NOT NULL,
ContactPhone VARCHAR (13) NOT NULL
)


CREATE TABLE Employees
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 
EmployeesFName VARCHAR (10) NOT NULL,
EmployeesLName VARCHAR (10) NOT NULL,
PhoneNumber VARCHAR (15) NOT NULL,
Email VARCHAR (100) NOT NULL,
[Address] VARCHAR (100) NOT NULL,
Designation VARCHAR (100) NOT NULL
)

CREATE TABLE Salaries 
(
Id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Amount money NOT NULL,
[PaymentDate] DATE NOT NULL,
[PaymentMethod] VARCHAR(50) NOT NULL
)

CREATE TABLE Budget
(
Id int PRIMARY KEY IDENTITY (1,1),
EventId INT FOREIGN KEY  REFERENCES Events(Id) NOT NULL ,
ItemName VARCHAR(100),
Category VARCHAR(50),
EstimatedCost DECIMAL(10,2),
ActualCost DECIMAL(10,2),
payment_status TEXT CHECK(payment_status IN ('Pending', 'Paid', 'Partially Paid')),
Payment_date DATE,
Notes TEXT
)

CREATE TABLE Attendees (
Id INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(50) ,
LastName VARCHAR(50),
Email VARCHAR(100),
Phone VARCHAR(20)
)