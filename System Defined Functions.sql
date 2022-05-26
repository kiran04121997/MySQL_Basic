USE kirandb1;
-- Create table for database---
CREATE TABLE Customers (
    CustomerID int,
    CustomerName varchar(255),
    ContactName varchar(255),
    Address varchar(255),
    City varchar(255)
);

select * from Customers where CustomerID IN (select CustomerID from Customers WHERE CustomerID=2);
SELECT * FROM Customers WHERE CustomerID>2;
select CS from student_marks sm1 where 2= (select COUNT(DISTINCT CS)from student_marks sm2 where sm1.CS<=sm2.CS);

---- Create Customer data ---
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City) VALUES
 (1, 'Cardinal', 'tom', 'skagen21', 'Stavanger'),
 (2, 'kiran', 'sham', 'kc', 'wi'),
 (3, 'sam', 'joe', 'uk', 'Berlin'),
 (4, 'vikram', 'ram', 'delhi', 'ind'),
 (5, 'vishnu', 'sk', 'mumbai', 'mh');

---- Alter to create new column and Update to add updated data ---
ALTER TABLE Customers
ADD PostalCode int;

UPDATE Customers
SET PostalCode = 413501
WHERE CustomerID = 1;

ALTER TABLE Customers
ADD Price int;

SELECT * FROM Customers;

UPDATE Customers
SET Price = 110
WHERE CustomerID = 1;

ALTER TABLE Customers
ADD Country varchar(30);

UPDATE Customers
SET Country = 'england'
WHERE CustomerID = 1;

-- Retrieve Customers data--
SELECT * FROM Customers;

-- Retrieve City of Particular CustomerName from Customers data--
SELECT City FROM Customers WHERE CustomerName = 'sam';
SELECT * FROM Customers WHERE CustomerID = 3;

--- Delete Row From Customer table ---
DELETE FROM Customers WHERE CustomerID=1;

---- truncate to remove all data from the table -----
TRUNCATE TABLE Customers;

--- Drop to Customer table ---
DROP TABLE Customers;

--- Drop Column From Customer table ---
ALTER TABLE Customers
DROP Price;

--- Show Row From Customer table ---
SELECT DISTINCT Address FROM Customers;
SELECT * FROM Customers;

--- MIN,MAX,COUNT,AVG,SUM FUNCTIONS ---

SELECT MIN(Price) AS LESSPRICE FROM Customers;

SELECT MIN(Price) AS LESSPRICE FROM Customers;

SELECT COUNT(CustomerID) FROM Customers;

SELECT AVG(Price) FROM Customers;

SELECT SUM(Price) FROM Customers;

--- AND,OR,NOT Operators ---

SELECT * FROM Customers
WHERE CustomerID = 1 AND City = 'Stavanger';

SELECT * FROM Customers
WHERE City = 'ind' OR City = 'mh';

SELECT * FROM Customers
WHERE City IN ('wi', 'ind');

SELECT * FROM Customers
WHERE NOT City = 'ind';
 
SELECT * FROM Customers
WHERE City != 'Berlin';

--- Delete Row From Customer table ---
DELETE FROM Customers WHERE CustomerID=2 AND City = kc;

-- Create table for Orders---
CREATE TABLE Orders (
   OrderID int,
   CustomerID int,
    OrderDate date
);

SELECT * FROM Orders;
insert into Orders (OrderID , CustomerID, OrderDate) values
(10308, 2, '2007-02-03'),
(10309, 37, '2010-05-04'),
(10310, 77, '2009-06-02');

TRUNCATE TABLE Orders;

 
  #  STRING FUNCTIONS
-- 1.ASCII() FUNCTION ----
SELECT ASCII(CustomerName) AS NumCodeOfFirstChar
FROM Customers;
  
--- 2.CHARACTER_LENGTH() function return the length of a string (in characters) ----
SELECT CHARACTER_LENGTH(CustomerName) AS LengthOfName
FROM Customers;


--- 3.CONCAT() function adds two or more expressions together ----
SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address
FROM Customers;


--- 3.Insert the string "no" into the string "W3Schools.com". Replace three characters, starting from position 11: ----
SELECT INSERT("W3Schools.com", 11, 3, "no");


--- 4.Search for "COM" in string "W3Schools.com", and return position: and it returns the position of the first occurrence of a string in another string ----
SELECT INSTR("W3Schools.com", "COM") AS MatchPosition;

--- 5.Convert the text to lower-case: ----
SELECT LCASE("SQL Tutorial is FUN!");

--- 6.Extract 3 characters from a string (starting from left): ----
SELECT LEFT("SQL Tutorial", 3) AS ExtractString;

--- 7.Return the length of the string, in bytes: ----
SELECT LENGTH("SQLTutorial") AS LengthOfString;

--- 8.Search for "3" in string "W3Schools.com", and return position: ----
SELECT LOCATE("3", "K", "W3Schools.com") AS MatchPosition;

--- 9.Remove leading spaces from a string: ----
SELECT LTRIM("     SQL Tutorial") AS LeftTrimmedString;

--- 10.Extract a substring from a string (start at position 5, extract 3 characters): ----
SELECT MID("SQL Tutorial", 5, 3) AS ExtractString;

--- (same as LOCATE) 16.Search for "3" in string "W3Schools.com", and return position: ----
SELECT POSITION("3" IN "W3Schools.com") AS MatchPosition;

--- 11.Repeat a string 3 times: ----
SELECT REPEAT("SQL Tutorial", 3);

--- 12.Replace "SQL" with "HTML": ----
SELECT REPLACE("SQL Tutorial", "SQL", "HTML");

--- 13.Reverse a string: ----
SELECT REVERSE("SQL Tutorial");

--- 14.Extract 4 characters from a string (starting from right): ----
SELECT RIGHT("SQL Tutorial is cool", 4) AS ExtractString;

--- 15.Remove trailing spaces from a string: ----
SELECT RTRIM("SQL Tutorial     ") AS RightTrimmedString;

--- 16.Return a string with 10 space characters:----
SELECT SPACE(10);

--- 17.Compare two strings:----
SELECT STRCMP("SQL Tutorial", "HTML Tutorial");

--- 18.Remove leading and trailing spaces from a string:----
SELECT TRIM('    SQL Tutorial    ') AS TrimmedString;

--- 19.Convert the text to upper-case:----
SELECT UCASE("SQL Tutorial is FUN!");


            ----- Numeric Functions -----
--- 1.Return the absolute value of a number:----
SELECT ABS(-243.5);

--- 2.Return the arc cosine of a number:----
SELECT ACOS(0.25);

--- 3.Return the arc sine of a number:----
SELECT ASIN(0.25);

--- 4.Return the arc tangent of a number:----
SELECT ATAN(2.5);

--- 5.Return the arc tangent of two values:----
SELECT ATAN2(0.50, 1);

--- 6.Return the average value for the "Price" column in the "Products" table:----
SELECT AVG(Price) AS Price FROM Customers;

--- 7.Return the smallest integer value that is greater than or equal to 25.75:----
SELECT CEIL(25.75);

--- 8.Return the cosine of a number:----
SELECT COS(2);

--- 9.Return the cotangent of a number:----
SELECT COT(6);

--- 10.Return the number of products in the "Products" table:----
SELECT COUNT(CustomerID) AS Price FROM Customers;

--- 11.Convert a radian value into degrees:----
SELECT DEGREES(1.5);

--- 12.Return e raised to the power of 1:----
SELECT EXP(10);

--- 13.Return the largest integer value that is equal to or less than 25.75:----
SELECT FLOOR(25.75) AS FloorValue;

--- 14.Return the natural logarithm of 2:----
SELECT LOG(2);

--- 15.Return the base-10 logarithm of 2:----
SELECT LOG10(2);

--- 16.Find the price of the most Price in the "Customers" table:----
SELECT MAX(Price) AS LargestPrice FROM Customers;

--- 17.Find the price of the cheapest product in the "Products" table:----
SELECT MIN(Price) AS SmallestPrice FROM Customers;

--- 18.Return the value of PI:----
SELECT PI();

--- 19.Return 4 raised to the three power:----
SELECT POWER(4, 3);

--- 20.Convert a degree value into radians:----
SELECT RADIANS(180);

--- 21.Return a random decimal number:----
SELECT RAND();

--- 22.Round the number to 2 decimal places:----
SELECT ROUND(235.415, 2) AS RoundValue;

--- 23.Return the sign of a number:----
SELECT SIGN(255.5);

--- 24.Return the sine of a number:----
SELECT SIN(2);

--- 25.Return the square root of a number:----
SELECT SQRT(64);

--- 26.Return the tangent of a number:----
SELECT TAN(1.75);

        --- Date Functions----
--- 1.Add 10 days to a date and return the date:----   
	SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY);

--- 2.Add 2 seconds to a time and return the datetime:----   
SELECT ADDTIME("2017-06-15 09:34:21", "2");

--- 3.Return the current date:----  
SELECT CURRENT_DATE(); 

--- 4.Return current time: ----  
SELECT CURRENT_TIME();

--- 5.Return the current date and time: ----
SELECT CURRENT_TIMESTAMP(); 

 --- 6.Return current time: ----
 SELECT CURTIME();
 
--- 7.RExtract the date part: ---- 
SELECT DATE("2017-06-15");

--- 8.Return the number of days between two date values: ---- 
SELECT DATEDIFF("2017-06-25", "2017-06-15");

--- 9.Add 10 days to a date and return the date: ---- 
SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);

--- 10.Format a date: ---- 
SELECT DATE_FORMAT("2017-06-15", "%Y");

--- 11.Subtract 10 days from a date and return the date: ---- 
SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY);

--- 12.Return the day of the month for a date: ---- 
SELECT DAY("2017-06-15");

--- 13.Return the weekday name for a date: ---- 
SELECT DAYNAME("2017-06-15");

--- 14.Return the day of the month for a date: ---- 
SELECT DAYOFMONTH("2017-08-15");

--- 15.Return the weekday index for a date:---- 
SELECT DAYOFWEEK("2017-07-15");

--- 16.Return the day of the year for a date:---- 
SELECT DAYOFYEAR("2020-06-15");

--- 17.Extract the month from a date:---- 
SELECT EXTRACT(MONTH FROM "2017-06-15");

--- 18.Return the hour part of a datetime: ---- 
SELECT HOUR("2017-06-20 09:34:00");

--- 19.Extract the last day of the month for the given date: ---- 
SELECT LAST_DAY("2017-06-20");

--- 20.Return current date and time: ---- 
SELECT LOCALTIME();

--- 21.Create and return a date based on  a year and a number of days value: ---- 
SELECT MAKEDATE(2017, 3);

--- 22.Create and return a time value based on an hour, minute, and second value: ---- 
SELECT MAKETIME(11, 35, 4);

--- 23.Return the microsecond part of a datetime: ---- 
SELECT MICROSECOND("2017-06-20 09:34:00.000023");

--- 24.Return the minute part of a datetime value: ---- 
SELECT MINUTE("2017-06-20 09:34:00");

--- 25.Return the month part of a date: ---- 
SELECT MONTH("2017-06-15");

--- 26.Return the name of the month for a date: ---- 
SELECT MONTHNAME("2017-06-15");

--- 27.Return current date and time: ---- 
SELECT NOW();

--- 28.Add a specified number of months to a period: ---- 
SELECT PERIOD_ADD(201703, 5);

--- 29.Return the difference between two periods: ---- 
SELECT PERIOD_DIFF(201710, 201703);

SELECT * FROM Customers;
TRUNCATE TABLE Customers;
 
 
-- Group By ---
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

--- Having --
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) < 5
ORDER BY COUNT(CustomerID) DESC;

select * from customers;

# BLOB(binary large objects) String Datatype:-

CREATE TABLE product_details(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
description BLOB
);

INSERT INTO product_details VALUES
(1,'product12', 'This is a blob description'),
(2,'product11','This is a new blob description'),
(3,'product12','This is a blob description'),
(4,'product11','This is a newer blob description');

SELECT * FROM product_details;










