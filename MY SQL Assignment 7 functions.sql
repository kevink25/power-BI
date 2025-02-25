CREATE DATABASE population;

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
    DOB DATE,
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

INSERT INTO Persons (Fname, Lname, Population, Rating, Country_Id, Country_name, DOB) VALUES
('John', 'Doe', 10000, 4.5, 1, 'USA', '1990-05-14'),
('Alice', 'Smith', 15000, 4.0, 2, 'Canada', '1985-08-22'),
('Raj', 'Kumar', 20000, 4.8, 3, 'India', '1992-12-05'),
('Li', 'Wei', 18000, 4.2, 4, 'China', '1988-03-30'),
('Hans', 'Müller', 12000, 3.9, 5, 'Germany', '1995-07-19'),
('Sophie', 'Leroy', 14000, 4.1, 6, 'France', '1993-01-25'),
('Carlos', 'Silva', 17000, 4.6, 7, 'Brazil', '1991-09-17'),
('James', 'Brown', 16000, 4.3, 8, 'Australia', '1987-11-11'),
('Oliver', 'Taylor', 13000, 3.8, 9, 'UK', '1996-06-08'),
('Hiroshi', 'Tanaka', 19000, 4.7, 10, 'Japan', '1989-04-02');

DELIMITER $$
CREATE FUNCTION CalculateAge(dob DATE) RETURNS INT DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, dob, CURDATE());
END $$
DELIMITER ;

SELECT Id, Fname, Lname, DOB, CalculateAge(DOB) AS Age FROM Persons;


SELECT Country_name, LENGTH(Country_name) AS Name_Length FROM Country;


SELECT Country_name, LEFT(Country_name, 3) AS First_Three FROM Country;


SELECT Country_name, UPPER(Country_name) AS Uppercase_Name, LOWER(Country_name) AS Lowercase_Name FROM Country;

