create database StoredProcedure;
use StoredProcedure;
-- Create table for database---
CREATE TABLE Employee (
    id int NOT NULL UNIQUE,
    name_ varchar(50) NOT NULL,
    percentage INT NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    state varchar(20) NOT NULL,
    country varchar(20) NOT NULL,
    start_date DATE,
    end_date DATE
);

INSERT INTO Employee (id, name_, percentage, age, salary, state, country, start_date, end_date ) VALUES
(1, 'kiran', 65, 19, 50000, 'maha', 'ind', '2020-04-12','2022-01-24'), 
(2, 'vishnu', 70, 20, 60000,'londan', 'eng', '2019-01-25','2021-05-20'),
(3, 'Nikita', 80, 26, 70000,'karac', 'pak', '2017-08-20','2022-05-10'),
(4, 'ronit', 85, 25, 80000,'syd', 'aus', '2018-01-04','2022-02-24'),
(5, 'Rohan', 64, 22, 90000,'captown', 'sa', '2026-04-18','2020-01-28'); 


ALTER TABLE Employee
DROP End_DATE; 

drop table Employee;

# Work on Types of Stored Procedure

#Creating new Stored Procedure
delimiter // 
CREATE PROCEDURE display()
BEGIN
SELECT * FROM Employee;
END//
delimiter ;

#Execute Procedure
CALL display();

#Drop Procedure
DROP PROCEDURE display;

#IN Parameter
delimiter // 
CREATE PROCEDURE displaydata(IN var1 int)
BEGIN
SELECT * FROM Employee LIMIT var1;
END//
delimiter ;

#Execute Procedure
CALL displaydata(1);

#Drop Procedure
DROP PROCEDURE displaydata;

select * from Employee;

#Out Parameter
delimiter // 
CREATE PROCEDURE displaydatanew(OUT highestsalary int)
BEGIN
SELECT MAX(salary) INTO highestsalary FROM Employee;
END//
delimiter ;

#Execute Procedure
CALL displaydatanew(@M);

select @M;

SELECT * FROM Employee;

#Drop Procedure
DROP PROCEDURE displaydatanew;


#IN-OUT Parameter
delimiter // 
CREATE PROCEDURE displaynew(INOUT var1 int)
BEGIN
SELECT salary INTO var1 FROM Employee WHERE id=var1;
END//
delimiter ;

#Execute Procedure
SET @M=3;
CALL displaydatanew(@M);

select @M;

#Drop Procedure
DROP PROCEDURE displaynew;

DELIMITER $$
CREATE FUNCTION Func_Calculate_Age2
(
 age date
)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
    SELECT CURRENT_DATE() INTO TodayDate;
    RETURN YEAR(TodayDate) - YEAR(age);
END$$
DELIMITER ;

SELECT Func_Calculate_Age2('1992-02-29');
SELECT Func_Calculate_Age2('1988-02-29') AS age;

  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  ---- Stored Procedure ---
DELIMITER //
CREATE PROCEDURE sp_GetAllEmployee(start_date DATE, end_date DATE)
BEGIN
    
     select * from Employee where Employee.end_date between '2020-04-12' AND '2022-01-24';
END //
DELIMITER ;

CALL sp_GetAllEmployee('2020-04-12', '2022-02-24');

-- To drop a stored procedure
DROP PROCEDURE IF EXISTS sp_GetAllEmployee;

SELECT *  FROM Employee;

#select * from Employee where end_date between CAST(end_date AS date) AND SYSDATE();
#select * from Employee where start_date AND end_date between '2018-01-04' AND '2022-02-24';

# For date function
delimiter ;

drop procedure if exists list_test_status;

delimiter #

create procedure list_test_status
(
in p_start_date date,
in p_end_date date
)
begin

select aux1, aux2, aux3, aux4, date, id, type,
case
    when results = 'pass' then 1
    when results = 'fail' then 0
    else -1
end as CertStatus,
case
    when results = 'pass' then 1
    when results = 'fail' then 0
    else -1
end as TestStatus,
case
    when results = 'pass' then 1
    when results = 'fail' then 0
    else -1
end as TestStatus,
case
    when results = 'pass' then 1
    when results = 'fail' then 0
    else -1
end as TestStatus
from 
 completed
where 
 date >= p_start_date and date <= p_end_date;

end#

delimiter ;

call list_test_status('2011-04-01', '2011-04-07');

call test ('2011-04-01', '2011-04-07');










