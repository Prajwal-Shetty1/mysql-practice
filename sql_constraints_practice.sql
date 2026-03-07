#constraints-notnull,unique,default,check
CREATE DATABASE constraints;
use constraints;
CREATE TABLE student(
   rollno INT,
   name VARCHAR(50) NOT NULL,    #column cannot be empty
    id INT UNIQUE,    #values cannot repeat
    city VARCHAR(50) DEFAULT 'Mangalore'   #Sets a default value automatically.
);
INSERT INTO student(rollno,name,id) VALUES
(101,'Anil',1),
(102,'Rahul',2);
SELECT * FROM STUDENT;

#check -restricts values
CREATE TABLE check_example(
  rollno INT,
  marks INT CHECK(marks >= 40)
);
INSERT INTO check_example(rollno,marks) VALUES (100,30);  #error obtained as 30 is smaller
INSERT INTO check_example(rollno,marks) VALUES (100,50); 
SELECT * FROM check_example;


