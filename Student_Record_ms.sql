CREATE DATABASE student_project;
USE student_project;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO students (name, course, marks, city) VALUES
('Rahul','BCA',78,'Mumbai'),
('Sneha','BBA',85,'Pune'),
('Amit','BCA',65,'Delhi'),
('Priya','BSc',90,'Mumbai'),
('Rohan','BBA',72,'Pune'),
('Neha','BCA',88,'Delhi');

SELECT * FROM students;
SELECT AVG(marks) AS avg_marks FROM students;

SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 1;

SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

SELECT name, marks,
CASE
    WHEN marks >= 85 THEN 'A'
    WHEN marks >= 70 THEN 'B'
    ELSE 'C'
END AS grade
FROM students;

