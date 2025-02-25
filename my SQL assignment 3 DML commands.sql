CREATE DATABASE COM;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age >= 25 AND Age <= 60),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'John', 'Doe', '1985-06-15', 38, 'Male', 'IT', 30000),
(2, 'Alice', 'Smith', '1979-02-10', 45, 'Female', 'HR', 28000),
(3, 'Robert', 'Brown', '1990-09-25', 33, 'Male', 'Finance', 32000),
(4, 'Emily', 'Davis', '1988-04-12', 36, 'Female', 'IT', 26000),
(5, 'Michael', 'Wilson', '1992-07-08', 31, 'Male', 'Marketing', 24000),
(6, 'Sarah', 'Lee', '1984-01-20', 40, 'Female', 'IT', 27000),
(7, 'David', 'Martinez', '1975-11-30', 48, 'Male', 'HR', 31000),
(8, 'Aaliya', 'Khan', '1995-05-17', 29, 'Female', 'Finance', 29000),
(9, 'James', 'Taylor', '1983-08-22', 41, 'Male', 'Operations', 33000),
(10, 'Sophia', 'Anderson', '1991-03-05', 33, 'Female', 'Marketing', 22000);
SELECT First_name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;

SELECT First_name, Last_Name, Salary * 12 AS Annual_Income FROM Managers;

SELECT * FROM Managers WHERE First_name <> 'Aaliya';

SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;

SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;

