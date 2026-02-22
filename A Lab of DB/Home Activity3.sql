/* 
Task: Home Activity 3
Name: Iman Tahir
Roll No: IAC-FA23-BSCS-051

Submitted To: Miss Sobia
Submitted By: Iman Tahir
*/

use SALES

--Q1Create a table COUNTRIES with 6 specified columns names and insert two records.

create table sales.countries(
country nvarchar(10),
POP int,
Area decimal(12,4),
GNP int,
Language nvarchar(15),
Literacy int
);

insert into sales.countries
values('Algeria',12345678,919595,89000,'Arabic',57),
('Yugoslavia',345678,39449,10000,'Serbo-Cro..',89);

--Q2 Insert a single record in table COUNTRIES

INSERT INTO sales.countries(country, POP, Area, GNP, LANGUAGE, LITERACY)
VALUES ('Beulah', 144000, 1146807, NULL, NULL, 100);

--Query 3 Update the value of POP=100000000 in the table where COUNTRY is Beulah. Result


update sales.countries
set POP=100000000, Language='Hebrew'
where country= 'Beulah';

--Q4 

delete from sales.countries
where country='beulah';

