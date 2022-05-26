use kiran;

TABLE friend 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Friend.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE "secure_file_priv" ;

TABLE Employees 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Employee.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE "secure_file_priv" ;

 