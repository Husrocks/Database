/* Task: Home Activity 3
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035
Submitted To: Miss Sobia
 
*/

USE SALES;
GO

-- Q1: Create a table COUNTRIES with 6 specified columns names and insert two records.

-- Note: Increased nvarchar(10) to nvarchar(50) to prevent truncation errors for longer names
CREATE TABLE sales.countries(
    country NVARCHAR(50), 
    POP INT,
    Area DECIMAL(12,4),
    GNP INT,
    Language NVARCHAR(50),
    Literacy INT
);

INSERT INTO sales.countries
VALUES
('Algeria', 12345678, 919595, 89000, 'Arabic', 57),
('Yugoslavia', 345678, 39449, 10000, 'Serbo-Cro..', 89);

-- VIEW RESULTS AFTER Q1
SELECT * FROM sales.countries;


-- Q2: Insert a single record in table COUNTRIES

INSERT INTO sales.countries(country, POP, Area, GNP, LANGUAGE, LITERACY)
VALUES ('Beulah', 144000, 1146807, NULL, NULL, 100);

-- VIEW RESULTS AFTER Q2
SELECT * FROM sales.countries;


-- Q3: Update the value of POP=100000000 in the table where COUNTRY is Beulah.

UPDATE sales.countries
SET POP = 100000000, 
    Language = 'Hebrew'
WHERE country = 'Beulah';

-- VIEW RESULTS AFTER Q3
SELECT * FROM sales.countries;


-- Q4: Remove a single record where country is Beulah

DELETE FROM sales.countries
WHERE country = 'Beulah';

-- VIEW FINAL RESULTS AFTER Q4
SELECT * FROM sales.countries;