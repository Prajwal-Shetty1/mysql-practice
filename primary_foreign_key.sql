#primary key and foreign key
DROP DATABASE IF EXISTS xyz;
CREATE DATABASE xyz;
USE xyz;
CREATE TABLE student(
  rollno INT PRIMARY KEY,
  marks VARCHAR(50)
  );
INSERT INTO student(rollno,marks) VALUES
(100,95),
(101,96),
(103,97);
DROP TABLE IF EXISTS marks;
CREATE TABLE mark(
  rollno INT,
  FOREIGN KEY (rollno) references student(rollno)
  );
INSERT INTO mark VALUES(105);  # error because 105 not in student table
INSERT INTO mark(rollno) VALUES
(100),
(101);
SELECT * FROM mark;