#TABLE RELATED QUERIES
USE college;
SELECT * FROM student;
#Alter(to change the schema)
#ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT;

#DROP COLUMN
ALTER TABLE student
DROP COLUMN age;

#RENAME TABLE 
ALTER TABLE students
RENAME TO student;

#CHANGE COLUMN 
ALTER TABLE student
CHANGE COLUMN grade grades VARCHAR(50);

#MODIFY COLUMN(modify datatype or its constraints)
ALTER TABLE student
MODIFY marks INT;

#TRUNCATE-to delete tables data
TRUNCATE TABLE student;
CREATE TABLE student(
     rollno INT PRIMARY KEY,
     name VARCHAR(50),
     marks INT,
     grade VARCHAR(50),
     city VARCHAR(50)
);
INSERT INTO student(rollno,name,marks,grades,city) VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN name names VARCHAR(50);
SET SQL_SAFE_UPDATES = 0;
DELETE FROM STUDENT
WHERE marks<80;

ALTER table student
DROP COLUMN grades; 