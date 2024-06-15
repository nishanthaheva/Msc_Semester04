-- user id is the sutable primarykey for Users table
ALTER TABLE users ADD  CONSTRAINT pk_users PRIMARY KEY (user_id) enable;

-- course id is the suitable primary key for course table
alter table course add CONSTRAINT pk_course PRIMARY KEY (course_id) enable;
alter table course add CONSTRAINT fk_course_user_id FOREIGN KEY  (created_by) REFERENCES users(user_id);


alter table course add CONSTRAINT uc_course_duration CHECK (course_duration between 1 and 5 ) enable;
alter table course add CONSTRAINT uc_course_cost CHECK (cost between 300 and 2000 ) enable;

alter table location add CONSTRAINT pk_location PRIMARY KEY (location_id) enable;

alter table student add CONSTRAINT pk_Student PRIMARY KEY (student_id) enable;


ALTER TABLE student ADD CONSTRAINT cc_cred_card_format CHECK (REGEXP_LIKE(credit_card_no, '^[0-9]{4} [0-9]{4} [0-9]{4} [0-9]{4}$'));


alter table instructor add CONSTRAINT pk_instructor PRIMARY KEY (instructor_id) enable;

alter table offering add CONSTRAINT pk_offering PRIMARY KEY (offering_id) enable;
alter table offering add CONSTRAINT fk_offering_course_id FOREIGN KEY (course_id) REFERENCES course(course_id);
alter table offering add CONSTRAINT fk_offering_location_id FOREIGN KEY (location_id) REFERENCES location(location_id);
alter table offering add CONSTRAINT fk_offering_instructor_id FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id);
alter table offering add CONSTRAINT fk_offering_user_id FOREIGN KEY (created_by) REFERENCES users(user_id);

-- alter table offering add CONSTRAINT pk_users PRIMARY KEY (user_id) enable;

alter table enrollment add CONSTRAINT pk_enrollment PRIMARY KEY (enrolment_id) enable;
alter table enrollment add CONSTRAINT fk_enrollment_offering  FOREIGN KEY (offering_id) REFERENCES offering(offering_id);
alter table enrollment add CONSTRAINT fk_enrollment_student  FOREIGN KEY (student_id) REFERENCES student(student_id);


alter table attendance add CONSTRAINT fk_attendance_offering  FOREIGN KEY (offering_id) REFERENCES offering(offering_id);
alter table attendance add CONSTRAINT fk_attendance_student  FOREIGN KEY (student_id) REFERENCES student(student_id);


alter table exam_result add CONSTRAINT pk_exam_result PRIMARY KEY (offering_id,student_id) enable;
alter table exam_result add CONSTRAINT fk_exam_result_offering FOREIGN KEY (offering_id) REFERENCES offering(offering_id);
alter table exam_result add CONSTRAINT fk_exam_result_student FOREIGN KEY (student_id) REFERENCES student(student_id);


alter table course_evaluation add CONSTRAINT pk_evaluation PRIMARY KEY (offering_id,student_id) enable;

alter table course_evaluation add CONSTRAINT fk_evaluation_offering FOREIGN KEY (offering_id) REFERENCES offering(offering_id);
alter table course_evaluation add CONSTRAINT fk_evaluation_student FOREIGN KEY (student_id)  REFERENCES student(student_id);
alter table course_evaluation add CONSTRAINT uc_evaluation_course_evaluation_score CHECK (score between 0 and 5 ) enable;




--view constraint
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME IN ('COURSE','LOCATION','USERS','INSTRUCTOR','OFFERING','STUDENT','ENROLLMENT','EXAMINATION','EVALUATION');


