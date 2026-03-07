SHOW DATABASES;
DROP DATABASE IF EXISTS college;
CREATE DATABASE COLLEGE;
DROP DATABASE IF EXISTS college;

CREATE DATABASE college;
USE college;
CREATE TABLE student(
     rollno INT PRIMARY KEY,
     name VARCHAR(50),
     marks INT,
     grade VARCHAR(50),
     city VARCHAR(50)
);
INSERT INTO student(rollno,name,marks,grade,city) VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;