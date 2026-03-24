CREATE DATABASE joins;
USE joins;
CREATE TABLE student(
  student_id INT,
  name VARCHAR(50)
);
CREATE TABLE course(
  student_id INT,
  course VARCHAR(50)
);
INSERT INTO student(student_id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");
SELECT * FROM Student;

INSERT INTO course(student_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computerscience");
SELECT * FROM course;

#INNER JOIN-returns records that have matching values in both tables
SELECT *
FROM student
INNER JOIN course
ON student.student_id=course.student_id;

#LEFT JOIN -return records from left table and matched records from right table
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.student_id;

#RIGHT JOIN-Return all the records from righttable and matched records from left table
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id=course.student_id;

#FULL JOIN-return all values from both tables,if there is no match it shows null     leftjoin---Union---rightjoin
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.student_id
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id=course.student_id;