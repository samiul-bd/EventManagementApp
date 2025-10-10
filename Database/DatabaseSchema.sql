USE master
GO

CREATE DATABASE EventManagementDB
go

use EventManagementDB
go

Create Table Occasions (
Id INT PRIMARY KEY IDENTITY NOT NULL,
OccasionName varchar (50) NOT NULL,
OccasionDate date NOT NULL,
[Description] varchar(100)
)

