
CREATE TABLE Country (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3,2),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Country_name, Population, Area) VALUES
('USA', 331000000, 9833520),
('Canada', 37740000, 9984670),
('India', 1393409038, 3287263),
('China', 1444216107, 9596961),
('Germany', 83149300, 357022),
('France', 67348000, 551695),
('Brazil', 213993437, 8515767),
('Australia', 25687041, 7692024),
('UK', 68207114, 243610),
('Japan', 125960000, 377975);

INSERT INTO Persons (Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
('John', 'Doe', 10000, 4.5, 1, 'USA'),
('Alice', 'Smith', 15000, 4.0, 2, 'Canada'),
('Raj', 'Kumar', 20000, 4.8, 3, 'India'),
('Li', 'Wei', 18000, 4.2, 4, 'China'),
('Hans', 'Müller', 12000, 3.9, 5, 'Germany'),
('Sophie', 'Leroy', 14000, 4.1, 6, 'France'),
('Carlos', 'Silva', 17000, 4.6, 7, 'Brazil'),
('James', 'Brown', 16000, 4.3, 8, 'Australia'),
('Oliver', 'Taylor', 13000, 3.8, 9, 'UK'),
('Hiroshi', 'Tanaka', 19000, 4.7, 10, 'Japan');

SELECT LEFT(Country_name, 3) FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;

SELECT COUNT(DISTINCT Country_name) FROM Persons;

SELECT MAX(Population) FROM Country;

SELECT MIN(Population) FROM Persons;

INSERT INTO Persons (Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES ('Emily', NULL, 11000, 3.5, 1, 'USA'),
       ('Robert', NULL, 12000, 3.6, 2, 'Canada');
SELECT COUNT(Lname) FROM Persons;

SELECT COUNT(*) FROM Persons;

SELECT Population FROM Country LIMIT 3;

SELECT * FROM Country ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population 
FROM Persons 
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population 
FROM Persons 
GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating 
FROM Persons 
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Avg_Rating ASC;
