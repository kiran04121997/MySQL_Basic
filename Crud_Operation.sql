--- create operation ---
CREATE DATABASE kiran;
CREATE SCHEMA kiran;
USE kiran;
CREATE TABLE person(
id int NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
contact bigint NOT NULL,
address varchar(255) NOT NULL,
email varchar(255) NOT NULL,
PRIMARY KEY(id)
);
DESC person;
INSERT INTO person (id, name, contact, address, email) VALUES
(1, 'Ram Mandle', '9855632213', 'c9', 'ram@g3.com'),
(2, 'dipakmandale', '8965213402', 'g4', 'dipak@2m.com'),
(3, 'rajkalpe', '9874528451', 'h7', 'raj@r4.com'),
(4, 'balajibukle', '7564854615', 'd2', 'balaji@.com'),
(5, 'ajaykukurde', '8947512464', 'b6', 'ajay@67.com'),
(6, 'Shanank', 9986868682, 'B8', 'shanank@85,com'),
(7, 'Mayank Anand', 9986868681, 'B8', 'mayankanand@bl.com'),
(8, 'Kiran Bosale', 9865321790, 'C7', 'kiran@bl.com');
INSERT INTO person VALUES
(6, 'Mayank', 9986868682, 'B8', NULL);
-- Read Operation
SELECT * from contact;
SELECT name, contact from person;
SELECT * from person WHERE email IS NULL;
SELECT * from person WHERE address = 'B8' AND contact = 9986868681 ORDER BY id DESC;

--- create view ---
CREATE VIEW AddressB8ContactEnding81 AS
SELECT * from person WHERE address = 'B8' AND contact = 9986868681 ORDER BY id DESC;
SELECT * from AddressB8ContactEnding81;

 -- Update Operation ---
ALTER TABLE person MODIFY COLUMN email varchar(500);
RENAME TABLE person TO contact;

-- Delete Operation ---
TRUNCATE contact;
DELETE from contact;
ALTER TABLE person DROP COLUMN email;
DROP TABLE contact;
SELECT * from person;


  
