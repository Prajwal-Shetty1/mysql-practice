SHOW DATABASES;
USE college;
SHOW TABLES;
SELECT * FROM student;

#TAblerelated Query-UPDATE
SET SQL_SAFE_UPDATES = 0;   #It turns OFF safe update mode.
UPDATE student
SET grade="O"
WHERE grade="A";
SELECT * FROM student;
UPDATE student
SET marks="20"
WHERE marks="12";
SELECT * FROM student;
UPDATE student
SET grade="A"
WHERE marks BETWEEN 90 AND 100;
SELECT * FROM student;

#TAblerelated Query-DELETE
DELETE FROM student
WHERE marks<25;
SELECT * FROM student;

#REvisting FOreign key
#EER DIAGRAM
USE college;
#parent table
CREATE TABLE dept(
   id INT PRIMARY KEY,
   name VARCHAR(50)
);
#child table
CREATE TABLE teacher(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   dept_id INT,
   FOREIGN KEY (dept_id) REFERENCES dept(id)
);