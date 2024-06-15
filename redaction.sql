Redacting DOB

--Log into sqlplus as sysdba and give FOLLOWING
--GRANT EXECUTE ON DBMS REDACT TO USERNISHANTHA;


begin

dbms_redact.add_policy(

object_schema =>'trainset',

object_name =>'STUDENT',

column_name =>'birthday',

policy_name =>'REDACT_DATE_POLICY',

function_type => DBMS_REDACT.PARTIAL,

function_parameters=>'m12d25Y',

expression =>'SYS_CONTEXT(''USERENV'',''SESSION_USER'')!=''Trainset_2'''

);
END;

SELECT * FROM TRAINSET.student;


--Revoke Redact of DOB
begin
dbms_redact.drop_policy(
object_schema =>'trainset',
Object_name =>'STUDENT',
policy_name =>'REDACT_DATE_POLICY'
);
end;   


Redact the CreditCard
begin
dbms_redact.add_policy(
object_schema =>'trainset',
object_name =>'STUDENT',
column_name   => 'credit_card_no',
policy_name =>'redact_card_info',
function_type => DBMS_REDACT.PARTIAL,
function_parameters=> 'VVVVFVVVVFVVVVFVVVV,VVVV VVVV VVVV VVVV,*,1,12',
expression =>'SYS_CONTEXT(''USERENV'',''SESSION_USER'')!=''Trainset_2'''
);
end;



