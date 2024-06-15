
drop table course_evaluation;
drop table exam_result;
drop  TABLE enrollment ;
drop TABLE offering;
DROP TABLE attendance;
drop table course;
drop table location;
drop  TABLE instructor ;
drop  TABLE student ;
drop TABLE users ;


CREATE TABLE users (  
  user_id INT,
  email varchar(50)
);

create table course(
course_id int,
title varchar(200),
course_duration int,
cost NUMERIC(8,2),
description varchar(200),
created_on TIMESTAMP DEFAULT sysdate,
created_by int
);

create table location(
location_id int,
location_name varchar(100),
address varchar(400),
city varchar(100),
telephone varchar(12),
email varchar(50),
created_by int,
created_on TIMESTAMP
);


CREATE TABLE student (
  student_id INT ,
  reg_no varchar(20),
  first_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(100) NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255),
  telephone VARCHAR(10),
  birthday DATE,
  gender INT,
  company VARCHAR(400),
  credit_card_no VARCHAR(20),
  registered_date TIMESTAMP,
  created_by INT
);

CREATE TABLE instructor (
  instructor_id INT ,
  full_name VARCHAR(255) NOT NULL,
  telephone VARCHAR(12),
  email VARCHAR(255),
  created_by INT 
);

CREATE TABLE offering (
  offering_id INT ,
  course_id INT ,
  location_id INT ,
  instructor_id INT, 
  start_date DATE,
  is_started int,
  created_date TIMESTAMP,
  created_by INT 
);


CREATE TABLE enrollment (
  enrolment_id INT ,
  offering_id INT,
  student_id INT ,  
  enrollment_date TIMESTAMP,
   enrolled_by INT
);

CREATE TABLE attendance (
  offering_id INT,
  student_id INT , 
  att_date TIMESTAMP  
);

CREATE TABLE exam_result ( 
  offering_id INT ,
  student_id INT ,
  conducted_date DATE,
  score NUMERIC(5,2),
  created_by INT
);

CREATE TABLE course_evaluation (
  offering_id INT ,
  student_id INT ,
  evaluated_date TIMESTAMP,
  score int
);


