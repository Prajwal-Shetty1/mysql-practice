#SELECT in detail
CREATE DATABASE abc;
USE abc;
CREATE TABLE student(
  rollno INT,
  name VARCHAR(50),
  city VARCHAR(50)
);
INSERT INTO student VALUES
(101,'Anil','Mangalore'),
(102,'Rahul','Bangalore'),
(103,'Priya','Mangalore');
SELECT * FROM student;   #to select all values
SELECT name,city FROM student; #to select particular column
SELECT DISTINCT city FROM student; #stores unique value

#WHERE CLAUSE
SELECT * FROM STUDENT WHERE city="Mangalore";
SELECT * FROM student WHERE name="Priya" and city="Mangalore";
SELECT * FROM student WHERE city NOT IN ("Mangalore");

#LIMIT CLAUSE
SELECT * FROM student LIMIT 2;

#GROUP BY CLAUSE-(asc and desc)
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY city DESC;

#AGGREGATE FUNCTIONS-count(),max(),min(),sum(),avg()
SELECT COUNT(*) FROM student;
SELECT SUM(rollno) FROM student;
SELECT MAX(rollno) FROM student;
SELECT MIN(rollno) FROM student;
SELECT AVG(rollno) FROM student;

#GROUP BY CLAUSE
SELECT city, COUNT(*) FROM student GROUP BY city;
SELECT city, AVG(rollno) FROM student GROUP BY city;


#HAVING CLAUSE 
USE college;
SELECT * FROM student;
select city,count(name)
FROM student
GROUP BY city
HAVING max(marks)>90;
