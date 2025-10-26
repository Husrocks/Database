--ASSIGNMENT NO: 02
--Name: Hussnain Bashir
--Roll NO : IAC-FA23-BSCS-035
--Submitted to: Miss Sobia Iqbal




CREATE DATABASE eemcDB;

USE eemcDB;

CREATE SCHEMA em;

CREATE TABLE em.student_info (
    Sid INT PRIMARY KEY,
    Name VARCHAR(50),
    contact CHAR(10),
    Faculty VARCHAR(50),
    College_name VARCHAR(50)
);

ALTER TABLE em.student_info
ADD address VARCHAR(30);

ALTER TABLE em.student_info
DROP COLUMN contact;

ALTER TABLE em.student_info
ADD location VARCHAR(30);


UPDATE em.student_info
SET location = address;


ALTER TABLE em.student_info
DROP COLUMN address;


ALTER TABLE em.student_info
ALTER COLUMN Faculty CHAR(20);


INSERT INTO em.student_info (Sid, Name, Faculty, College_name, location)
VALUES
(1,  'Hussnain',      'Computer', 'EEMC',    'Kathmandu'),
(2,  'Asim',    'Electronics','EEMC',   'Pokhara'),
(3,  'Harry',     'Electrical','ABC College','Lalitpur'),
(4,  'Ram',            'Mechanical','XYZ College','Kathmandu'),
(5,  'Bilal',      'Civil',     'EEMC',    'Pokhara'),
(6,  'Noor',    NULL,        'PQR College','Bhaktapur'),
(7,  'Lena',    'Software',  NULL,       'Chitwan'),
(8,  'Faisal',   'Civil',     'EEMC',    'Pokhara'),
(9,  'Hassan',     'IT',        'EEMC',    'Kathmandu'),
(10, 'Zara',      'Computer',  'EEMC',    'Pokhara');


UPDATE em.student_info
SET Faculty = 'civil'
WHERE Sid = 3;

UPDATE em.student_info
SET Faculty = 'computer'
WHERE Name = 'ram' 
AND location = 'kathmandu';


DELETE FROM em.student_info
WHERE Faculty = 'civil' AND location = 'pokhara';

SELECT * FROM em.student_info;

SELECT Name, Faculty
FROM em.student_info
WHERE location = 'kathmandu';

SELECT Name, Faculty
FROM em.student_info
WHERE location = 'pokhara' AND College_name = 'eemc';


DELETE FROM em.student_info;


DROP TABLE em.student_info;

USE master;

DROP DATABASE eemcDB;