CREATE DATABASE StudentCourse;
use StudentCourse;
#CREATE STUDENT TABLE
CREATE TABLE students (student_id INT 	auto_increment PRIMARY KEY, Name varchar(100) NOT NULL, Email varchar(100) UNIQUE NOT NULL,DOB date);
#CREATE COURSE TABLE
CREATE TABLE courses(course_id int auto_increment PRIMARY KEY, course_name varchar(100) NOT NULL, course_code varchar(20) UNIQUE NOT NULL);
#CREATE TABLE ENROLLMENT LINKING STUDENT & COURSES TABLE
CREATE TABLE Enrollment (enrollment_id INT auto_increment PRIMARY KEY,student_id INT NOT NULL, course_id INT NOT NULL, enrollment_date date ,
FOREIGN KEY (student_id ) REFERENCES students (student_id) ON DELETE CASCADE , FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE);