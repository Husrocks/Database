
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




INSERT INTO em.student_info (Sid, Name, Faculty, College_name, location)
VALUES
(1,  'Hussnain',      'Computer', 'EEMC',    'Kathmandu'),
(2,  'Asim',    'Electronics','EEMC',   'Pokhara'),
(3,  'Harry',     'Electrical','ABC College','Lalitpur'),
(4,  'Ram',            'Mechanical','XYZ College','Kathmandu'),
(5,  'Bilal',      'Civil',     'EEMC',    'Pokhara'),
(6,  'Noor',  'BBA',        'PQR College','Bhaktapur'),
(7,  'Lena',    'Software',  'iac',       'Chitwan'),
(8,  'Faisal',   'Civil',     'EEMC',    'Pokhara'),
(9,  'Hassan',     'IT',        'EEMC',    'Kathmandu'),
(10, 'Zara',      'Computer',  'EEMC',    'Pokhara');



SELECT * FROM em.student_info;



