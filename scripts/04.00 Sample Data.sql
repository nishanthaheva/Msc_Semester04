
INSERT INTO users (user_id, email) VALUES (1, 'user1@trainset.com');
INSERT INTO users (user_id, email) VALUES (2, 'user2@trainset.com');
INSERT INTO users (user_id, email) VALUES (3, 'user3@trainset.com');
INSERT INTO users (user_id, email) VALUES (4, 'user4@trainset.com');
INSERT INTO users (user_id, email) VALUES (5, 'user5@trainset.com');

SELECT * FROM users;




INSERT INTO course (course_id,title, course_duration, cost, description,  created_by)
VALUES (1,'ITIL Foundation Certification', 3, 500.00, 'Prepares participants for the ITIL Foundation Certificate exam.',  1);

INSERT INTO course (course_id,title, course_duration, cost, description, created_by)
VALUES (2,'Project Management Professional (PMP) Certification', 5, 1200.00, 'Provides training for the PMP Certification exam.',  1);

INSERT INTO course (course_id,title, course_duration, cost, description, created_by)
VALUES (3,'Data Analysis with Python', 2, 750.00, 'Develops skills in data analysis using Python.',  1);

INSERT INTO course (course_id,title, course_duration, cost, description, created_by)
VALUES (4,'Effective Communication Skills', 1, 350.00, 'Enhances communication skills for professional settings.', 1);

INSERT INTO course (course_id,title, course_duration, cost, description, created_by)
VALUES (5,'Leadership Development', 4, 900.00, 'Provides training for effective leadership practices.',  1);

SELECT * FROM COURSE;



INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (1, 'John', '', 'Doe','CMB0001' ,'john.doe@example.com', '1234567890', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 1, 'ABC Company', '1234 1234 1234 1234');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (2, 'Jane', '', 'Smith', 'CMB0005' ,'jane.smith@example.com', '9876543210', TO_DATE('1985-07-15', 'YYYY-MM-DD'), 2, 'DEF Corporation', '9876 9876 9876 9876');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (3, 'Michael', 'A', 'Lee', 'CMB0006' ,'michael.lee@example.com', '5551234567', TO_DATE('1978-12-24', 'YYYY-MM-DD'), 1, 'GHI Inc.', '5555 5555 5555 5555');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (4, 'Sarah', 'Isabel', 'Garcia','KAN0001' , 'sarah.garcia@example.com', '2134567890', TO_DATE('1995-03-08', 'YYYY-MM-DD'), 2, 'JKL Enterprises', '2132 1321 3213 2132');

INSERT INTO Student (student_id, first_name, middle_name, last_name,reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (5, 'David', '', 'Kim','GAL0001' , 'david.kim@example.com', '7894561230', TO_DATE('1982-09-10', 'YYYY-MM-DD'), 1, 'MNO Consulting', '7897 8978 9789 7897');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no,email, telephone, birthday, gender, company, credit_card_no)
VALUES (6, 'Emily', 'Catherine', 'Jones','JAF0002' , 'emily.jones@example.com', '4567890123', TO_DATE('1998-05-21', 'YYYY-MM-DD'), 2, 'PQR Ltd.', '4564 5645 6456 4564');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no,email, telephone, birthday, gender, company, credit_card_no)
VALUES (7, 'William', 'Charles', 'Brown','CMB0001' , 'william.brown@example.com', '3219876540', TO_DATE('1980-11-17', 'YYYY-MM-DD'), 1, 'STU Holdings', '3213 2132 1321 3213');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (8, 'Ashley', 'Marie', 'Hernandez', 'KAN0002' ,'ashley.hernandez@example.com', '6543219870', TO_DATE('1999-08-29', 'YYYY-MM-DD'), 2, 'VWX LLC', '6546 5465 4654 6546');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (9, 'Robert', 'James', 'Miller', 'KAN0003' ,'robert.miller@example.com', '1029384756', TO_DATE('1975-04-03', 'YYYY-MM-DD'), 1, 'XYZ Inc.', '1021 0210 2102 1021');

INSERT INTO Student (student_id, first_name, middle_name, last_name, reg_no, email, telephone, birthday, gender, company, credit_card_no)
VALUES (10, 'Susan', 'Elizabeth', 'Baker', 'KAN0004' ,'susan.baker@example.com', '9871234560', TO_DATE('1997-03-05', 'YYYY-MM-DD'), 2, 'GHI Inc.', '9879 8798 7987 9870');


SELECT * FROM Student;



INSERT INTO location (location_id ,location_name, address,city, telephone, email, created_by)
VALUES (1,'Edinburgh', '37 Victoria Street,Edinburgh, Scotland','Edinburgh', '212-555-1234', 'Edinburgh@trainset.com', 1);

INSERT INTO location (location_id, location_name, address,city, telephone, email, created_by)
VALUES (2,'Belfast', '500 Wilshire Blvd, Belfast, Northern Ireland','Belfast', '310-555-5678', 'Belfast@trainset.com', 2);

INSERT INTO location (location_id,location_name, address,city, telephone, email, created_by)
VALUES (3,'London', '1 Lombard Street, London, EC3V 9AA, UK', '020-776-3000', 'London','london@trainset.com', 3);

INSERT INTO location (location_id,location_name, address,city, telephone,email,created_by)
VALUES (4,'Manchester', '30 South Wacker Drive, Manchester, England','Manchester', '312-555-9012', 'Manchester@trainset.com',1);

INSERT INTO location (location_id,location_name, address,city,telephone, email,created_by)
VALUES (5,'Cardiff Headquarters', '110 Castle Way,Cardiff, Wales ','Cardiff','343-555-3233', 'Cardiff@trainset.com',4);

SELECT * FROM location;

INSERT INTO instructor (instructor_id, full_name, telephone, email, created_by)
VALUES (1, 'John Smith', '555-123-4567', 'john.smith@example.com', 1);

INSERT INTO instructor (instructor_id, full_name, telephone, email, created_by)
VALUES (2, 'Jane Doe', '555-789-0123', 'jane.doe@example.com', 2);

INSERT INTO instructor (instructor_id, full_name, telephone, email, created_by)
VALUES (3, 'Michael Lee', '555-456-7890', 'michael.lee@example.com', 3);

SELECT * FROM instructor;


INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (1, 1, 1, 1, TO_DATE('2024-07-01', 'YYYY-MM-DD'),  0,  1);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (2, 3, 3, 2, TO_DATE('2024-03-05', 'YYYY-MM-DD'),  0,  2);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (3, 3, 3, 3, TO_DATE('2024-09-02', 'YYYY-MM-DD'), 0,  3);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (4, 4, 4, 1, TO_DATE('2024-10-10', 'YYYY-MM-DD'),  0,  1);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (5, 5, 5, 2, TO_DATE('2024-11-18', 'YYYY-MM-DD'),  0,  4);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (6, 3, 3, 2, TO_DATE('2024-08-05', 'YYYY-MM-DD'),  0,  2);

INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (7, 4, 3, 1, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 0,  1);
INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (8, 4, 2, 1, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 0,  1);
INSERT INTO offering (offering_id, course_id, location_id, instructor_id, start_date, is_started,  created_by)
VALUES (9, 4, 2, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 0,  1);

SELECT * FROM offering;


INSERT INTO enrollment (enrolment_id, offering_id, student_id,  enrollment_date,enrolled_by)
VALUES (1, 1, 1,  SYSDATE,1);

INSERT INTO enrollment (enrolment_id, offering_id, student_id, enrollment_date,enrolled_by)
VALUES (2, 1, 2,  SYSDATE,2);

INSERT INTO enrollment (enrolment_id, offering_id, student_id,  enrollment_date,enrolled_by)
VALUES (3, 2, 3,  SYSDATE,2);

INSERT INTO enrollment (enrolment_id, offering_id, student_id,  enrollment_date,enrolled_by)
VALUES (4, 3, 4, SYSDATE,4);

INSERT INTO enrollment (enrolment_id, offering_id, student_id, enrollment_date,enrolled_by)
VALUES (5, 4, 5, SYSDATE,5);

INSERT INTO enrollment (enrolment_id, offering_id, student_id,  enrollment_date,enrolled_by)
VALUES (6, 2, 5,  SYSDATE,2);
SELECT * FROM enrollment;


INSERT INTO EXAM_RESULT ( offering_id, student_id, conducted_date, score, created_by)
VALUES (1, 1,  TO_DATE('2023-10-10', 'YYYY-MM-DD'), 75, 2);


INSERT INTO EXAM_RESULT ( offering_id, student_id, conducted_date, score, created_by)
VALUES (2, 2,  TO_DATE('2024-5-25', 'YYYY-MM-DD'), 80, 3);

SELECT * FROM EXAM_RESULT;



