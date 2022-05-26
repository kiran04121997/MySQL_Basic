create database ImportNew;

USE ImportNew;

CREATE TABLE ImportData (
            id INT NOT NULL AUTO_INCREMENT,
            name VARCHAR(255) NOT NULL,
            PRIMARY KEY (id)
	);
    
SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE 'D:/file2.csv'
INTO TABLE ImportData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (id,name);

select * from ImportData;