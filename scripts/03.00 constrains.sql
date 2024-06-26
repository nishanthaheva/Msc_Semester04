--primary key for users column
ALTER TABLE users ADD  CONSTRAINT pk_users PRIMARY KEY (user_id) enable;

--primary key for course
alter table course add CONSTRAINT pk_course PRIMARY KEY (course_id) enable;
--foreign key for course
alter table course add CONSTRAINT fk_course_user_id FOREIGN KEY  (created_by) REFERENCES users(user_id) enable; 

--check constrains for course
alter table course add CONSTRAINT uc_course_duration CHECK (course_duration between 1 and 5 ) enable;
alter table course add CONSTRAINT uc_course_cost CHECK (cost between 300 and 2000 ) enable;

-- primary key for location table
alter table location add CONSTRAINT pk_location PRIMARY KEY (location_id) enable;

--primary key for student
alter table student add CONSTRAINT pk_Student PRIMARY KEY (student_id) enable;
-- check constraint for student table to credit card format using REGEX expressions
ALTER TABLE student ADD CONSTRAINT cc_cred_card_format CHECK (REGEXP_LIKE(credit_card_no, '^[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}$')) enable;

-- primary key for instrctor table
alter table instructor add CONSTRAINT pk_instructor PRIMARY KEY (instructor_id) enable;

-- primary key for offering table
alter table offering add CONSTRAINT pk_offering PRIMARY KEY (offering_id) enable;

--foreign keys for offering table for keeping intergrity
alter table offering add CONSTRAINT fk_offering_course_id FOREIGN KEY (course_id) REFERENCES course(course_id) enable;
alter table offering add CONSTRAINT fk_offering_location_id FOREIGN KEY (location_id) REFERENCES location(location_id) enable;
alter table offering add CONSTRAINT fk_offering_instructor_id FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id) enable;
alter table offering add CONSTRAINT fk_offering_user_id FOREIGN KEY (created_by) REFERENCES users(user_id) enable;

--primary key for enrollment table
alter table enrollment add CONSTRAINT pk_enrollment PRIMARY KEY (enrolment_id) enable;
--foreignkey contrains for enrollment table
alter table enrollment add CONSTRAINT fk_enrollment_offering  FOREIGN KEY (offering_id) REFERENCES offering(offering_id) enable;
alter table enrollment add CONSTRAINT fk_enrollment_student  FOREIGN KEY (student_id) REFERENCES student(student_id) enable;

--primary key constrain for attendance table
alter table attendance add CONSTRAINT fk_attendance_offering  FOREIGN KEY (offering_id) REFERENCES offering(offering_id) enable;
--foriegn key constrain for attendance table
alter table attendance add CONSTRAINT fk_attendance_student  FOREIGN KEY (student_id) REFERENCES student(student_id) enable;

--composit primary key constrain for exam_result table
alter table exam_result add CONSTRAINT pk_exam_result PRIMARY KEY (offering_id,student_id) enable;
--foreign key constrain for exam results table
alter table exam_result add CONSTRAINT fk_exam_result_offering FOREIGN KEY (offering_id) REFERENCES offering(offering_id) enable;
alter table exam_result add CONSTRAINT fk_exam_result_student FOREIGN KEY (student_id) REFERENCES student(student_id) enable;

--composit primary key for course evaluation 
alter table course_evaluation add CONSTRAINT pk_evaluation PRIMARY KEY (offering_id,student_id) enable;
-- foreign key constrain for course_evaluation table
alter table course_evaluation add CONSTRAINT fk_evaluation_offering FOREIGN KEY (offering_id) REFERENCES offering(offering_id) enable;
alter table course_evaluation add CONSTRAINT fk_evaluation_student FOREIGN KEY (student_id)  REFERENCES student(student_id) enable;
alter table course_evaluation add CONSTRAINT uc_evaluation_course_evaluation_score CHECK (score between 0 and 5 ) enable;




--view constraint
--SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME IN ('COURSE','LOCATION','USERS','INSTRUCTOR','OFFERING','STUDENT','ENROLLMENT','EXAMINATION','EVALUATION');


