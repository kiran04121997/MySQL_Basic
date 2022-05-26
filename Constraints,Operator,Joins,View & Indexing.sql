create database ConnectCsharpToMysql;
CREATE SCHEMA ConnectCsharpToMysql;
use ConnectCsharpToMysql;
-- Create table for database---
CREATE TABLE Person1 (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Person1 (PersonID, LastName, FirstName, Address, City) VALUES
   (1, 'bhosale', 'kiran', 'shirsi', 'latur'),
   (2, 'mandale', 'dipak', 'korali', 'nilanga'),
   (3, 'kalpe', 'raj', 'hasori', 'omeraga'),
   (4, 'bukle', 'balaji', 'nelwad', 'kalyan'),
   (5, 'kukurde', 'ajay', 'ausa', 'pune');
   
-- Retrieve data of Person1 ---
SELECT * FROM Person1;
SELECT Lastname, City from person1;
SELECT * from Person1 WHERE PostalCode IS NULL;
SELECT * from Person1 WHERE address = 'korali' ORDER BY PersonID DESC;

-- Update data of Person1 ---
UPDATE Person1
SET City = 'nagpur'
WHERE PersonID = 2;
RENAME TABLE Person1 TO contact;

UPDATE person1
SET PostalCode = 413512
WHERE PersonID = 2;
   
   --- delete operation --
-- Delete rows from table ---
DELETE FROM Person1 WHERE PersonID=5;
ALTER TABLE person DROP COLUMN email;
DROP TABLE contact;
---- truncate to remove all data from the table -----
TRUNCATE TABLE Person1;

---- to create new column ---
ALTER TABLE Person1
ADD PostalCode int;
SELECT * FROM Person1;

--- Show selected column From Person1 table ---
SELECT DISTINCT Address FROM Person1;

 CREATE TABLE Personal (
    id int,
    name varchar(255),
    birth_date date,
    phone varchar(255),
    gender varchar(10)
);

INSERT INTO Personal (id, name, birth_date, phone, gender) VALUES
   (1, 'Ram Kumar', '1990-07-15', '9921925459', 'M'),
   (2, 'meera khan', '1991-02-10', '9258642135', 'F'),
   (3, 'Anil kapoor', '1991-10-05', '8456275467', 'M'),
   (4, 'juhi chawla', '1992-02-05', '8555289467', 'F'),
   (5, 'John abraham', '1993-08-05', '9854885867', 'M');
   
   SELECT *  FROM personal;
   
INSERT INTO Personal (id, name, birth_date, phone) VALUES
 (6, 'amir khan', '1992-02-11', '9452187612');
 
 CREATE TABLE Constraints (
    id int NOT NULL UNIQUE,
    name varchar(50) NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    gender varchar(1) NOT NULL,
    phone varchar(10) NOT NULL UNIQUE,
    city varchar(15) NOT NULL DEFAULT 'Agra'
);

 SELECT *  FROM Constraints;
 
INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(1, 'Ram Kumar', 19, 'M', '4051358', 'Agra');
  
---- TEST NOT NULL constraints for gender column ---- 
INSERT INTO Constraints (id, name, age, phone, city) VALUES
(2, 'sarita', 20, '4054359', 'Agra');  

--- Test DEFAULT VALUE for city column ---   
INSERT INTO Constraints (id, name, age, gender, phone) VALUES
(2, 'Sarita', 21, 'F', '4064858');  
SELECT *  FROM Constraints;

INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(3, 'Nikita', 25, 'F', '4064958', 'Agra');  
SELECT *  FROM Constraints; 

ALTER TABLE Constraints
ADD Start_DATE DATETIME; 

ALTER TABLE Constraints
DROP End_DATE; 

SELECT *  FROM Constraints;

ALTER TABLE Constraints
ADD End_DATE DATETIME; 

UPDATE Constraints
SET Start_DATE = 2020-08-27
WHERE id = 1;

UPDATE Constraints
SET name = 'Ram Kumar'
WHERE id = 1;


--- Test UNIQUE for phone column no change in phone number ---   
INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(4, 'Suvarna', 26, 'F', '4064958', 'Agra');  
SELECT *  FROM Constraints;
  
---- After changing in phone number ---
INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(4, 'Suvarna', 26, 'F', '4064458', 'Agra'); 
SELECT *  FROM Constraints;

--- Test for CHECK Constraints ---
INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(5, 'Kiran', 15, 'M', '4164468', 'Pune'); 

--- After adding the age above 18 according to our condition ---
INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(5, 'Kiran', 25, 'M', '4164468', 'Agra'); 
SELECT *  FROM Constraints;

---- Where, Select Clause And Operators ---
SELECT *  FROM Constraints
WHERE gender = "F";

SELECT *  FROM Constraints
WHERE age < 20;

SELECT *  FROM Constraints
WHERE city = 'Agra';

SELECT *  FROM Constraints
WHERE city = 'Agra';

SELECT *  FROM Constraints
WHERE city != 'Agra';

SELECT *  FROM Constraints
WHERE gender = 'M' AND city = 'Agra';

SELECT *  FROM Constraints
WHERE age < 20 OR city = 'Agra';

SELECT *  FROM Constraints
WHERE NOT gender = 'M';

SELECT *  FROM Constraints
WHERE age BETWEEN 18 AND 24;

SELECT *  FROM Constraints
WHERE id BETWEEN 2 AND 4;

SELECT *  FROM Constraints
WHERE id NOT BETWEEN 2 AND 4;

SELECT *  FROM Constraints;

SELECT *  FROM Constraints
WHERE name LIKE "s%";

SELECT *  FROM Constraints
WHERE name LIKE "ram%";

SELECT *  FROM Constraints
WHERE name LIKE "K%n";

SELECT *  FROM Constraints
WHERE name LIKE "r%" OR name LIKE "S%";

SELECT *  FROM Constraints
WHERE name NOT LIKE "K%n";

--- Binary keyword searches records according to capital or small letters ---
SELECT *  FROM Constraints
WHERE BINARY name LIKE "S%";

---- START WITH % shows ---
SELECT *  FROM Constraints
WHERE name LIKE "%ta";

SELECT *  FROM Constraints
WHERE phone LIKE "%68";

SELECT *  FROM Constraints;

SELECT *  FROM Constraints
WHERE name LIKE "k%n";

SELECT *  FROM Constraints
WHERE name LIKE "_am%";

---- "__" shows those records whose third letter will be according to user input ---
SELECT *  FROM Constraints
WHERE name LIKE "__k%";

SELECT *  FROM Constraints
WHERE name LIKE "n_k%";


----- ORDER BY AND DISTINCT ---

SELECT *  FROM Constraints
ORDER BY name ASC;

SELECT *  FROM Constraints
WHERE city = 'Agra'
ORDER BY name DESC;
SELECT *  FROM Constraints;

SELECT *  FROM Constraints
ORDER BY id ASC;

--- Distinct removes duplicate values from columns and provide only unique values ---
SELECT DISTINCT city FROM Constraints;

--- LIMIT and OFFSET ---
SELECT *  FROM Constraints
LIMIT 3;

SELECT *  FROM Constraints
WHERE city = 'Agra'
ORDER BY name
LIMIT 3;

--- Offset ---
SELECT *  FROM Constraints
LIMIT 4, 3;

--- COMMIT And ROLLBACK ---
SELECT *  FROM Constraints;

INSERT INTO Constraints (id, name, age, gender, phone, city) VALUES
(6, 'Sham Kumar', 20, 'M', '4125319', 'Mumbai');

SELECT * FROM Constraints;

COMMIT;

DELETE FROM Constraints
WHERE id = 6;

ROLLBACK;

SELECT * FROM Constraints;

---- primary and foreign key Constraints ----
CREATE TABLE City2 (
    cid int NOT NULL AUTO_INCREMENT,    
    cityname varchar(50) NOT NULL,
    PRIMARY KEY (cid)
);

INSERT INTO City2(cityname)
VALUES('Agra'),
('Delhi'),
('Bhopal'),
('Jaipur'),
('Noida');

SELECT * FROM City2;

CREATE TABLE Personal2 (
    id int NOT NULL UNIQUE,
    name varchar(50) NOT NULL,
    percentage INT NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    gender varchar(1) NOT NULL,
    city int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (city) REFERENCES City (cid)  
);

select * from Personal2 where age > (select avg(age) from Personal2 where age>18);

INSERT INTO Personal2 (id, name, percentage, age, gender, city) VALUES
(1, 'Ram Kumar', 65, 19, 'M', 1),
(2, 'sarita', 70, 20, 'F', 2) ,
(3, 'Nikita', 85, 25, 'F',  1), 
(4, 'Suvarna', 86, 22,'F', 3),
(5, 'Anil', 90, 29,'M', 1),
(6, 'Vishnu', 68, 24,'M', 3),
(7, 'Vishal', 75, 30,'M', 1);

SELECT * FROM Personal2;

--- JOIN Or INNER JOIN ---
SELECT * FROM personal2 INNER JOIN City2
ON personal2.city = city2.cid;
 
 --- JOIN Or INNER JOIN With alias name --
SELECT * FROM personal2 p INNER JOIN City2 c
ON p.city = c.cid;

--- Hide city and cid column --
SELECT p.id,p.name,p.percentage,p.age,p.gender,c.cityname
FROM personal2 p INNER JOIN City2 c
ON p.city = c.cid;

--- Use of where clause in inner join ---
SELECT p.id,p.name,p.percentage,p.age,p.gender,c.cityname
FROM personal2 p INNER JOIN City2 c
ON p.city = c.cid
WHERE c.cityname ='Agra'
ORDER BY p.name;

--- LEFT JOIN ---
SELECT * FROM personal2 LEFT JOIN City2
ON personal2.city = city2.cid;

--- RIGHT JOIN ---
SELECT * FROM personal2 RIGHT JOIN City2
ON personal2.city = city2.cid;

SELECT p.id,p.name,p.percentage,p.age,p.gender,c.cityname
FROM personal2 p RIGHT JOIN City2 c
ON p.city = c.cid;

--- CROSS JOIN --
SELECT * 
FROM personal2 CROSS JOIN City2;

SELECT p.id,p.name,c.cityname 
FROM personal2 p CROSS JOIN City2 c;

CREATE TABLE Courses (
    crid int NOT NULL AUTO_INCREMENT,    
    course varchar(50) NOT NULL,
    PRIMARY KEY (crid)
);

INSERT INTO Courses(course)
VALUES('Btech'),
('BCA'),
('BBA');
SELECT * FROM Courses;

---- VIEW ---
CREATE VIEW studentdata2
AS
SELECT p.id,p.name,p.percentage,p.age,p.gender,c.cityname
FROM personal2 p INNER JOIN City2 c
ON p.city = c.cid;

SELECT * FROM studentdata2;

--- RENAME TABLE ---
RENAME TABLE studentdata 
TO studentcourse;

---- INDEX is used to search fast data ---
SELECT * FROM Constraints
WHERE age > 18;

CREATE INDEX StudAge ON Constraints (age);

SHOW INDEX FROM Constraints;

DROP INDEX StudAge ON Constraints;

SELECT * FROM Constraints;













