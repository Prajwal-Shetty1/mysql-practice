USE college;

SELECT * FROM student;

SELECT avg(marks)
FROM student;

SELECT names,marks
FROM student
WHERE marks>89;
SELECT names,marks
FROM student
WHERE marks > (SELECT avg(marks) FROM student);

CREATE DATABASE colleges;
USE colleges;
CREATE TABLE students (
    rollno INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

SELECT * FROM students;

#SQL sub Queries-it is a query with another sql query
#find names of students marks > avg
SELECT name,marks 
FROM students
WHERE marks > (SELECT avg(marks) FROM students);

#Find even rollnos,find the name of student with even roll no
SELECT rollno
FROM students
WHERE rollno % 2 = 0;

SELECT name,rollno
FROM students
WHERE rollno  IN (SELECT rollno FROM students WHERE rollno % 2 =0);

CREATE TABLE pupils (
    rollno INT,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO pupils (rollno, name, marks, city) VALUES
(101, 'anil', 78, 'Pune'),
(102, 'bhumika', 93, 'Mumbai'),
(103, 'chetan', 85, 'Mumbai'),
(104, 'dhruv', 96, 'Delhi'),
(105, 'emanuel', 92, 'Delhi'),
(106, 'farah', 82, 'Delhi');

#Find max marks from student of delhi
SELECT *
FROM pupils
WHERE city="Delhi";

SELECT max(marks)
FROM pupils 
WHERE marks IN (SELECT marks FROM pupils WHERE city="Delhi");


SELECT max(marks)
FROM (SELECT marks FROM pupils WHERE city="Delhi") AS temp;

#MYSQL -VIEWS---It is a virtual table based on result set of sql statement where data is not stored while it shows data from another table
CREATE VIEW view1 AS
SELECT rollno,name,marks FROM pupils;
SELECT * FROM view1;