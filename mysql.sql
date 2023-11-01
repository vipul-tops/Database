create database gift
use gift

create table user
(
	id int unsigned,
    name varchar(100),
    email varchar(100),
    password varchar(100),
    contact varchar(15),
    address text,
    dob date,
    gender enum("M","F","O"),
    status boolean
)

INSERT INTO user (id,name,email,password,contact,address,dob,gender,status)
VALUES
(2,"Vijay","vijay@gmail.com","12345679","8876543210","Bavla","1997-04-11","M",1),
(3,"Rajesh","rajesh@gmail.com","12355679","7876543210","Gandhinagar","1994-04-11","M",1),
(4,"Mittal","mit@gmail.com","12345677","8876543211","Ahmedabad","1999-08-21","F",1)

SELECT * FROM user

SELECT name,email FROM user

SELECT * FROM user WHERE name="Vipul"

CREATE TABLE student (
	id INT NOT NULL unique,
    name VARCHAR(100) NOT NULL,
    email varchar(100) not null,
    age tinyint check (age >=18),
    status boolean default 1
)

INSERT INTO student (id,name,email,age) VALUES (1,"Ajay","ajay@gmail.com",24),(2,"Viram","viram@gmail.com",20)

INSERT INTO student (id,name,email,age) VALUES (8,"Rajes","rajes@gmail.com",35), (9,"Aksha","aksha@gmail.com",23), (10,"Himu","himu@gmail.com",32), (11,"Jan","jan@gmail.com",21),(12,"Jayesh","jayesh@gmail.com",29)

SELECT * FROM student WHERE age>=18 AND age<=25

SELECT * FROM student WHERE NOT age=24 AND NOT age=21

SELECT * FROM student WHERE age IN (24,20,21)

SELECT * FROM student WHERE name LIKE "a%"

SELECT * FROM student WHERE name LIKE "%_s_%"

SELECT * FROM student WHERE age BETWEEN 21 AND 26

SELECT * FROM student WHERE age NOT BETWEEN 21 AND 28

SELECT * FROM student ORDER BY name ASC

SELECT * FROM student ORDER BY age DESC

SELECT DISTINCT age FROM student ORDER BY age ASC

INSERT INTO student VALUES (13,"Janvi","janv@gmail.com",NULL,1)

SELECT * FROM student WHERE age IS NULL

SELECT * FROM student WHERE age IS NOT NULL

SELECT * FROM student LIMIT 5

SELECT * FROM student ORDER BY name DESC LIMIT 5

SELECT * FROM student WHERE age>24 LIMIT 5

SELECT * FROM student LIMIT 5 OFFSET 2

ALTER TABLE student ADD COLUMN fee VARCHAR(10)

update student set fee=5000 WHERE id=6

SELECT * FROM student

SELECT COUNT(id) FROM student WHERE age>25

SELECT SUM(fee) FROM student

SELECT MIN(age) FROM student

SELECT MAX(fee) FROM student

SELECT AVG(age)  AS "AVG age" FROM student

DELETE FROM student WHERE id=6

COMMIT

DELETE FROM student WHERE id=3

ROLLBACK

#  create a new table which consists of data and structure copied from the other table
CREATE TABLE student_copy  select * from  student;

SELECT * FROM student_copy

# name from the student table in upper case and use the ALIAS name as Name
SELECT UPPER(name) AS Name FROM student

#retrieve the first four characters of  name from the student
SELECT SUBSTRING(Name, 1 , 4) FROM student

#  find all the student whose fee is between 4500 to 5500
SELECT * FROM student WHERE fee BETWEEN "4500" AND "5500"

# Name of Student Start with H
SELECT * FROM student WHERE Name LIKE"H%"











