CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
); 

DESCRIBE student;

-- "DROP TABLE" student is used to drop tables;
-- "Modifying the table;"
ALTER TABLE student ADD gpa DECIMAL(3,2);