
--5 a)

-- evelop a view on a join of only two tables that shows course details together
--with the details of the offerings of those courses within the last 12 months.
-- DROP VIEW courses_within_last12_months;

CREATE VIEW courses_within_last12_months 
 AS
SELECT c.*,o.Offering_ID, o.START_DATE FROM COURSE c  JOIN OFFERING o ON c.COURSE_ID =o.COURSE_ID 
WHERE o.START_DATE BETWEEN  ADD_MONTHS(SYSDATE, -12) AND SYSDATE ;

SELECT * FROM courses_within_last12_months;

--(b)

UPDATE courses_within_last12_months SET Title='Abc' WHERE course_id=3;

UPDATE courses_within_last12_months SET Start_date=to_date('2023-08-01','yyyy-MM-dd') WHERE course_id=4;
-- update successfull


INSERT INTO courses_within_last12_months
( COURSE_ID,TITLE, COURSE_DURATION, COST, DESCRIPTION, CREATED_DATE, USER_ID, OFFERING_ID, START_DATE)
values( 3,'Data Analysis with Python', 2,750,'Develops skills in data analysis using Python.', 
To_date('2023-02-02','yyyy-MM-dd') ,1,2,To_date('2023-02-02','yyyy-MM-dd') );

-- SQL Error [1779] [42000]: ORA-01779: cannot modify a column which maps to a non key-preserved table


DELETE FROM courses_within_last12_months WHERE course_id=4;
-- this deleted 2 offerings related to course number 4 and course number 4 from course table




/* 1.Views with expressions or aggregations:  If a view's column is derived from an expression or aggregation function (COUNT, SUM, AVG etc.), 
that cannot directly update that specific column in the view.
reason for this  is because the view doesn't store the data itself, it retrieves it based on the underlying tables and the defined logic.

2. Outer joins or set operations: Views with outer joins (LEFT JOIN, RIGHT JOIN, FULL JOIN) or set operations (UNION, INTERSECT, MINUS) are generally not updatable. These constructs create a more complex data structure in the view's results that isn't directly mapped to a single base table.

3. Multiple base tables with updates to different tables:  If a view joins data from multiple tables and you attempt to update a column that originates from one specific table, it might not be possible. Updatable views typically allow modifications only on columns from a single underlying table.

4.Views with GROUP BY or DISTINCT: Views with a GROUP BY or DISTINCT clause often cannot be updated.
 These clauses manipulate the retrieved data, making it difficult to map the update back to the original rows in the base tables.

*/

/*
  5 (c)
  Demonstrate and test the following using your primary Oracle account and your
‘_2’ secondary Oracle account. Show your SQL statements and the output of your
tests in each case.
*/


create user Trainset_2 identified by Abc1234;

GRANT CONNECT TO Trainset_2;


SELECT * FROM USER_TAB_PRIVS WHERE  grantee = 'Trainset_2';   --TYPE='VIEW' AND

GRANT SELECT ON TRAINSET.COURSES_WITHIN_LAST12_MONTHS TO Trainset_2;


--SELECT grantee, privilege, table_name FROM ALL_USER_PRIVS WHERE grantee = 'Trainset_2';

SELECT * FROM USER_TAB_PRIVS WHERE TYPE='VIEW' AND grantee = 'TRAINSET_2';

-- grant select and update on view

GRANT UPDATE ON TRAINSET.COURSES_WITHIN_LAST12_MONTHS TO Trainset_2;

SELECT * FROM USER_TAB_PRIVS WHERE TYPE='VIEW' AND grantee = 'TRAINSET_2';


-- check existing permissions
SELECT * FROM USER_TAB_PRIVS WHERE TYPE='VIEW' AND grantee = 'Trainset_2';

-- revoke permission
REVOKE SELECT,UPDATE ON TRAINSET.COURSES_WITHIN_LAST12_MONTHS from Trainset_2;



/*
i. Enable read only access to the view for the secondary account and show
evidence of your grant by querying the Oracle data dictionary for privileges
granted by you.
ii. Change the privilege for the secondary account to permit updates to the
view. Test the privilege using your ‘_2’ account and while logged in as ‘_2’
use the data dictionary to show the privileges that the ‘_2’ account now has.
iii. Prohibit the secondary account from accessing the view.
*/
 
-- grant select on student

GRANT SELECT ON TRAINSET.STUDENT TO Trainset_2;

 
 
 
