CREATE DATABASE practice_1;
USE practice_1;

# ------------------------------------------------------------------------------------------------------------------------------ #
-- Basics --
# ------------------------------------------------------------------------------------------------------------------------------ #
CREATE TABLE Student(
	roll_no int NOT NULL UNIQUE,		
	name varchar(30),
    department varchar(10)
);

SHOW TABLES; 	-- lists all tables in the current database. list only names!

# to know more about a particular table
DESCRIBE excel_uploads.kaizen_reports;		-- database.table_name
DESCRIBE student;

# ------------------------------------------------------------------------------------------------------------------------------ #
-- Use of INSERT command --
# ------------------------------------------------------------------------------------------------------------------------------ #
INSERT INTO STUDENT VALUES (1,"SUYASH","COMPUTER");		
INSERT INTO student (roll_no, name) VALUES (2,"SHWETAN");		-- selected cols
INSERT INTO STUDENT VALUES (3, 'VARAD', 'COMPUTER'),(4, 'ATHARAV', ' IT');		-- multiple values
SELECT * FROM STUDENT;

CREATE TABLE STUDENT_BACKUP(
	roll_no int,
    name varchar(30),
    department varchar(30)
);
INSERT INTO STUDENT_BACKUP SELECT * FROM STUDENT;		-- copying data. NOTE: no "VALUES" keyword is used
SELECT * FROM STUDENT_BACKUP;

# ------------------------------------------------------------------------------------------------------------------------------ #
-- Use ALTER Command --
# ------------------------------------------------------------------------------------------------------------------------------ #

# using to rename table and column
ALTER TABLE STUDENT RENAME TO STUDENT;
ALTER TABLE STUDENT RENAME COLUMN department TO dept;

/* COMMON MISTAKE 1

ALTER TABLE STUDENT ADD COLUMN phone int NOT NULL UNIQUE;	-- error since the table has data. 
1) first NOT NULL (add zero every row) 
2) then UNIQUE is violated since duplicate zeros present 

*/

/* REMEMBER - use below syntax to drop the UNIQUE constraint

ALTER TABLE STUDENT DROP INDEX roll_no;	

*/

# using to add or drop column
ALTER TABLE STUDENT ADD COLUMN phone int NOT NULL;
ALTER TABLE STUDENT DROP COLUMN phone;


# using to modify column data type
ALTER TABLE STUDENT MODIFY dept varchar(50);

# on constraints -  refer notion notes

# ------------------------------------------------------------------------------------------------------------------------------ #
-- Delete, Truncate and Drop Diff -- Notion Notes
# ------------------------------------------------------------------------------------------------------------------------------ #

