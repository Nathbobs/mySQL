CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

DESCRIBE student;

-- "DROP TABLE" student is used to drop tables;
-- "Modifying the table;"
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP COLUMN gpa;

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
INSERT INTO student VALUES(1, 'Jack', 'Biology');-- ' ' this must be used to insert string
INSERT INTO student VALUES(2, 'Katie', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');  -- This is used to specify the peice of info you wanna enter into the table
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');
--grabbing info from student table
SELECT * FROM student;

DROP TABLE student;-- to drop the entire table

--CONSTRAINTS
--NOT NULL
--UNIQUE
--DEFAULT ' Whatever we want it to be i.e 'Undecided''

--"To avoid null from appearing on the table i.e"
-- name VARCHAR(20) NOT NULL,"This makes sure that there is no null in this column".
-- "To make a particular column unique, we use the word UNIQUE."-- major VARCHAR(20) UNIQUE, "This makes the major field has to be unique for this table"
--

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    major VARCHAR(25) UNIQUE
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');-- ' ' this must be used to insert string
INSERT INTO student VALUES(2, 'Katie', 'Sociology');
INSERT INTO student VALUES(3, NULL,'Chemistry'); 
INSERT INTO student VALUES(4, 'Jack', 'Biology'); -- will show duplicate entry error
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');


SELECT * FROM student

--DEFAULT ' Whatever we want it to be i.e 'Undecided' (To set a deault value)'
CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(40) DEFAULT 'undecided',
    major VARCHAR(25) UNIQUE
);

INSERT INTO student (student_id,major) VALUES(1, 'Jack');-- ' ' this must be used to insert string

--AUTO INCREMENTing Primary Key: Used for auto incrementing whatever data we have in the primary key section.

CREATE TABLE student(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) DEFAULT 'undecided',
    major VARCHAR(25) UNIQUE
);

INSERT INTO student (name, major) VALUES('Katie', 'Sociology');
INSERT INTO student (major) VALUES('Chemistry'); 
