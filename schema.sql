create database etl_project;
use etl_project;
create table eastside (
	id int auto_increment primary key,
    year int, 
    business TEXT,
    GRADE TEXT,
    location TEXT
    );
create table westside (
	id int auto_increment primary key,
    year int, 
    business TEXT,
    GRADE TEXT,
    location TEXT
    ); 
#----Counting As for Westside    
SELECT id, COUNT(GRADE)
FROM westside
WHERE GRADE = 'A';

#----Counting As for Eastside
SELECT id, COUNT(GRADE)
FROM eastside
WHERE GRADE = 'A';

#----SELECT only As from WESTIDE
SELECT * FROM westside
WHERE GRADE = 'A';

#----Count Grade by year
SELECT id, year, business, GRADE, location FROM eastside
UNION ALL
SELECT id, year, business, GRADE, location FROM westside;

#----Convert Text in order to use = sign--NOT WORKING.  I think this is why we can not get all data for inspections = A. GRADE should not be TEXT but VARCHAR
#---SELECT * FROM westside
ALTER TABLE westside
MODIFY COLUMN GRADE datatype(VARCHAR);
#---SELECT CONVERT(VARCHAR, GRADE);

    
    
    