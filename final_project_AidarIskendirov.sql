CREATE DATABASE final_project;

DROP TABLE IF EXISTS uk_bank;

CREATE TABLE uk_bank
(
	CustomerID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20),
    Surname VARCHAR(20),
    Gender VARCHAR(6) check (Gender in ('Male','Female')),
    Age INT,
    Region VARCHAR(20) check (Region in ('England','Northern Ireland','Wales','Scotland')),
    JobClassification VARCHAR(20),
    DateJoined date,
    Balance DECIMAL(8,2)
 );
 
DELETE FROM uk_bank WHERE CustomerID IS NULL;

SELECT * FROM uk_bank;
 