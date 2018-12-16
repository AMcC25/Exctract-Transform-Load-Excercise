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

#----Counting As for WESTSIDE
SELECT id, COUNT(GRADE)
FROM westside
WHERE GRADE like 'A';

#----Counting As for EASTSIDE
SELECT id, COUNT(GRADE)
FROM eastside
WHERE GRADE like 'A';

#pick top restaurants WESTSIDE
SELECT id, year, business, GRADE, location
from westside
WHERE GRADE LIKE '%A%';

#pick top restaurants EASTSIDE
SELECT id, year, business, GRADE, location
from eastside
WHERE GRADE LIKE '%A%';

#Total List of Restaurants    
SELECT id, year, business, GRADE, location FROM eastside
UNION ALL
SELECT id, year, business, GRADE, location FROM westside
ORDER BY GRADE;    
    
#----Counting As for WESTSIDE by YEAR
SELECT id, year, COUNT(GRADE)
FROM westside
WHERE GRADE like 'A'
GROUP BY year;

#----Counting As for EASTSIDE by YEAR
SELECT id, year, COUNT(GRADE)
FROM eastside
WHERE GRADE like 'A'
GROUP BY year;

