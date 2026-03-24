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


#LEFT EXCLUSIVE JOIN-Returns records from left table only (no match in right)
SELECT * 
FROM student
LEFT JOIN course
ON student.student_id=course.student_id
WHERE course.student_id IS NULL;

#RIGHT EXCLUSIVE JOIN-Returns records from right tableonly(no match in left)
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id=course.student_id
WHERE student.student_id IS NULL;

#SELF JOIN-It is a regular join but the table is joined with itself
CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  manager_id INT
);
INSERT INTO employee(id,name,manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);
SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT a.name as manager_name,b.name
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id; 

#UNION-it is used to combine results of of two or more select statement,gives unique records
SELECT *
FROM course
UNION
SELECT *
FROM student;
