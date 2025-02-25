CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50) NOT NULL,
    Population INT,
    Area DECIMAL(10,2)
);
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Population INT,
    Rating DECIMAL(2,1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 37700000, 9984670),
(3, 'UK', 67800000, 243610),
(4, 'India', 1380000000, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83100000, 357022),
(7, 'France', 67000000, 551695),
(8, 'Japan', 126000000, 377975),
(9, 'Brazil', 212000000, 8515767),
(10, 'South Africa', 59300000, 1219090);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', NULL, 4.2, 1, 'USA'),
(2, 'Alice', 'Smith', NULL, 3.8, 2, 'Canada'),
(3, 'Robert', 'Brown', NULL, 4.5, 3, 'UK'),
(4, 'Emily', 'Davis', NULL, 4.1, 4, 'India'),
(5, 'Michael', 'Wilson', NULL, 4.9, 5, 'Australia'),
(6, 'Sarah', 'Lee', NULL, 3.7, 6, 'Germany'),
(7, 'David', 'Martinez', NULL, 4.6, 7, 'France'),
(8, 'James', 'Taylor', NULL, 4.0, 8, 'Japan'),
(9, 'Sophia', 'Anderson', NULL, 4.3, 9, 'Brazil'),
(10, 'Oliver', 'White', NULL, 3.9, 10, 'South Africa');

SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';

