# ------------------------------------------------------------------------------------------------------------------------------ #
-- Mastering Schema Modelling (CREATE TABLE) --

-- 1 -- Declaration
-- 2 -- Datatypes
-- 3 -- Constraints
-- 4 -- Foreign Relation

# ------------------------------------------------------------------------------------------------------------------------------ #
CREATE DATABASE IF NOT EXISTS my_sql_foundations;
USE my_sql_foundations;

-- 1 -- DECLARATION 
/*
a) follow snake_case (no digits or special characters while naming)
b) strictly follow -> (col_name, datatype, constraints) 
		otherwise ERROR!
*/

CREATE TABLE IF NOT EXISTS students(
	roll_no INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- UNSIGNED TO DISALLOW NEGATIVE VALUES
    full_name VARCHAR(20) NOT NULL,
    dept VARCHAR(10)
);

-- 2 -- DATATYPES -----------------------------------------------------------------------------------
/*
a) NUMERIC TYPES (integer types, float, decimal, double)
b) STRING TYPES (char, varchar, text types)
c) DATE TYPES (date, time, datetime, timestamp, year)

# FORMAT IS IMP. REFER NOTION NOTES

NOTE - timestamp auto-updates when row changes
*/

-- 3 -- CONSTRAINTS --------------------------------------------------------------------------------
/*
NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT, DEFAULT - common 
*/

-- COPYING A TABLE ---------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS students_copy AS SELECT * FROM students;

-- 4 -- FOREIGN RELATION ---------------------------------------------------------------------------
/*
NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, AUTO_INCREMENT, DEFAULT - common 
*/

ALTER TABLE students_copy MODIFY dept INT;

CREATE TABLE departments (
	dept_id INT PRIMARY KEY,
    dept_name VARCHAR(10)
);

ALTER TABLE students_copy ADD FOREIGN KEY (dept) REFERENCES departments(dept_id);

SHOW TABLES;