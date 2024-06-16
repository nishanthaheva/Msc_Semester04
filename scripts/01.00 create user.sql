ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

create user Trainset identified by Abc1234;

GRANT CONNECT, RESOURCE, DBA TO Trainset;

--GRANT ALL privileges TO Trainset;

--SELECT grantee, privilege, table_name FROM ALL_USER_PRIVS WHERE grantee = 'Trainset_2';

--SELECT * FROM USER_TAB_PRIVS WHERE TYPE='VIEW' AND grantee = 'Trainset_2';

--SELECT grantee, privilege, table_name FROM ALL_USER_PRIVS WHERE grantee = 'Trainset_2';


GRANT EXECUTE ON DBMS_REDACT TO Trainset;



--create user Trainset_2 identified by Abc1234;

--GRANT CONNECT TO Trainset_2;