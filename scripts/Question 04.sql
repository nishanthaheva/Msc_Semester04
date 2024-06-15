--a. Find details of all courses running in London.

SELECT c.* FROM COURSE c JOIN OFFERING o ON c.COURSE_ID = o.COURSE_ID 
 WHERE o.location_id =(SELECT location_id FROM LOCATION l WHERE LOCATION_NAME='London');

--b. Find the course that runs the greatest number of times.

WITH cte_RankedCourses AS (
  SELECT course.title, COUNT(*) AS num_offerings,
         DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
  FROM course
  INNER JOIN offering ON course.course_id = offering.course_id
  GROUP BY course.title
)
SELECT title, num_offerings
FROM cte_RankedCourses
WHERE rank = 1;

--c. Find the total number of attendees for each course.

SELECT DISTINCT c.title, COUNT(e.STUDENT_ID) OVER(PARTITION BY c.COURSE_ID) AS country_profit
FROM COURSE c JOIN OFFERING o ON c.COURSE_ID = o.COURSE_ID 
JOIN ENROLLMENT e ON o.OFFERING_ID =e.OFFERING_ID ;

--d. Show details of the student names and the titles of the courses that they have attended.

SELECT s.REG_NO , s.FIRST_NAME || ' ' || s.MIDDLE_NAME || ' ' || s.LAST_NAME  AS STU_NAME, c.TITLE FROM COURSE c 
JOIN OFFERING o ON c.COURSE_ID = o.COURSE_ID 
JOIN ENROLLMENT e ON o.OFFERING_ID =e.OFFERING_ID JOIN STUDENT s ON s.STUDENT_ID =e.STUDENT_ID 


--e. List the title and cost of each course.

SELECT TITLE,COST FROM COURSE c ;


--f)	Add a column to your answer to 4(e) that compares the cost of the course to the average cost i.e. shows the difference between the course cost and the average cost of all courses

WITH cte_avg_course_cost AS
(
SELECT TITLE,COST ,  avg(cost) OVER () AS avg_cost 
FROM COURSE c)
SELECT TITLE,COST,AVG_COST , (cost - AVG_COST) AS cost_diff FROM cte_avg_course_cost;






