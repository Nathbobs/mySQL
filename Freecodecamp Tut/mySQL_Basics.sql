#CREATING TABLES:

### Most used datatypes;
INT
DECIMAL(M,N) #"M is the total number of digits and N is the number of digits after the decimal point" 
#DECIMAL(5,2) = 123.45 (5 digits in total, 2 after the decimal point)
VARCHAR(1) *This will store a string of text with a maximum length of 1 character (100) means max lenght 100)
BLOB *This will store a large binary object (like an image or a sound file)("Binary Large Object")
DATE *This will store a date 'YYYY-MM-DD'
TIMESTAMP *This will store a date and time 'YYYY-MM-DD HH:MM:SS'

 --sets student_id to the pry key of the database
 --"this is used to create a table"
-------------------------------------------------------
 CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
); 

DESCRIBE student;

-- "DROP TABLE" student is used to drop tables;
-- "Modifying the table;"
ALTER TABLE student ADD gpa DECIMAL(3,2);
--------------------------------------------------------
CREATE TABLE student2(
    student_id INT PRIMARY KEY,
    name VARCHAR(40),
    major VARCHAR(25)
);

DESCRIBE student2;

ALTER TABLE student2 ADD gpa DECIMAL(3,2);
ALTER TABLE student2 ADD grade INT;
ALTER TABLE student2 DROP COLUMN grade;

--INSERTING DATA
INSERT INTO student VALUES(1, 'DAYO', 'Biology')-- ' ' this must be used to insert string
--grabbing info from student table
SELECT * FROM student;
