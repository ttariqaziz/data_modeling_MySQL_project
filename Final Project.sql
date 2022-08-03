-- 
CREATE TABLE LOC_19499
(
LOC_ID Number,
CITY VARCHAR2(40))
TABLESPACE "USERS" ;

CREATE TABLE DEPT_19499
(DEPT_ID NUMBER ,
 DEPT_NAME VARCHAR2(40),
 LOC_ID Number) TABLESPACE USERS;
 
CREATE TABLE EMP_19499
(
EMP_ID Number,
FIRST_NAME VARCHAR2(40) NOT NULL,
LAST_NAME VARCHAR2(40) NOT NULL,
JOB_ID  NUMBER NOT NULL,
SALARY NUMBER NOT NULL,
COMM_PCT NUMBER,
MGR_ID NUMBER,
HIRE_DATE DATE NOT NULL,
DEPT_ID NUMBER NOT NULL) 
TABLESPACE "USERS" ;

DROP TABLE EMP_19488 CASCADE CONSTRAINTS;

-- 
ALTER TABLE LOC_19499 ADD CONSTRAINT PK_LOC_ID PRIMARY KEY (LOC_ID);

ALTER TABLE DEPT_19499 ADD CONSTRAINT PK_DEP_ID PRIMARY KEY (DEPT_ID);

ALTER TABLE EMP_19499 ADD CONSTRAINT PK_EMP_ID PRIMARY KEY (EMP_ID);


-- 
ALTER TABLE DEPT_19499 ADD CONSTRAINT FK_LOC_ID FOREIGN KEY (LOC_ID) REFERENCES LOC_19499(LOC_ID);

ALTER TABLE EMP_19499 ADD CONSTRAINT FK_DEPT_ID FOREIGN KEY (DEPT_ID) REFERENCES DEPT_19499(DEPT_ID);

ALTER TABLE EMP_19499 ADD CONSTRAINT FK_EMP_ID FOREIGN KEY (MGR_ID) REFERENCES EMP_19499(EMP_ID);


-- 
DROP SEQUENCE SEQ_EMP_19499_PK;
CREATE SEQUENCE SEQ_EMP_19499_PK 
INCREMENT BY 10 
START WITH 19499 
MAXVALUE 9999999 
NOCACHE 
NOCYCLE;

DROP SEQUENCE SEQ_DEPT_19499_PK;
CREATE SEQUENCE SEQ_DEPT_19499_PK 
INCREMENT BY 10 
START WITH 10
MAXVALUE 9999 
NOCACHE 
NOCYCLE;

DROP SEQUENCE SEQ_LOC_19499_PK;
CREATE SEQUENCE SEQ_LOC_19499_PK 
INCREMENT BY 10 
START WITH 1000
MAXVALUE 99999 
NOCACHE 
NOCYCLE;


-- 
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'San Jose');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Fremont');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'LA');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'New York');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Diamon Bar');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'San Diego');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Chino');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Chino Hills');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Walnut');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Milpitas');
Insert into LOC_19499 values (SEQ_LOC_19499_PK.NEXTVAL,'Corona');
Commit;

Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Administration',1010);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Marketing',1030);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Shipping',1090);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'IT',1000);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Sales',1030);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'HR',1010);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Accounting',1010);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'MIS',1000);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Product Management',1090);
Insert into DEPT_19499 values (SEQ_DEPT_19499_PK.NEXTVAL,'Information Security',1050);
Commit;

insert into emp_19499 
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Elen','Abel',501,1500,null,null,'1-jan-94',40);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Peter','White',501,1000,null,null,'2-feb-95',40);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Alex','Li',502,2500,2,null,'3-mar-96',20);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Austin','Ho',502,2000,2,null,'4-apr-97',20);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Rayson','Lee',503,3500,null,null,'5-may-98',30);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Tinlot','Hu',503,3000,null,null,'6-jun-99',30);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Jason','Teng',504,4500,null,null,'7-jul-00',40);

insert into emp_19499 
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Watson','Deng',504,4000,null,null,'8-aug-01',40);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Vincent','Wang',505,5500,null,null,'9-sep-02',50);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'George','Chen',505,5000,null,null,'10-oct-03',50);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Joden','Higgins',506,6500,null,null,'11-nov-04',60);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Jerry','Xu',506,6000,null,null,'12-dec-05',60);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Billy','Shi',507,7500,null,null,'13-jan-07',70);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Iris','Chen',507,7000,null,null,'14-feb-08',70);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Kiko','Sun',508,8500,null,null,'15-mar-09',80);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Ivy','Wang',508,8000,null,null,'16-apr-10',80);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Ben','Chieng',509,9500,null,null,'17-may-11',90);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Estella','Pan',509,9000,null,null,'17-may-11',90);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Peggy','Kuo',510,15000,null,null,'19-jul-13',10);

insert into emp_19499
       (EMP_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, HIRE_DATE, DEPT_ID)
values (SEQ_EMP_19499_PK.NEXTVAL,'Grace','Lin',510,10000,null,null,'20-aug-14',10);
commit;

update emp_19499 set mgr_id = 19519 where dept_id = 20;
update emp_19499 set mgr_id = 19539 where dept_id = 30;
update emp_19499 set mgr_id = 19499 where dept_id = 40;
update emp_19499 set mgr_id = 19579 where dept_id = 50;
update emp_19499 set mgr_id = 19599 where dept_id = 60;
update emp_19499 set mgr_id = 19619 where dept_id = 70;
update emp_19499 set mgr_id = 19639 where dept_id = 80;
update emp_19499 set mgr_id = 19659 where dept_id = 90;
update emp_19499 set mgr_id = 19679 where dept_id = 10;
commit;

update emp_19499 set mgr_id = null where emp_id = 19519;
update emp_19499 set mgr_id = null where emp_id = 19539;
update emp_19499 set mgr_id = null where emp_id = 19499;
update emp_19499 set mgr_id = null where emp_id = 19579;
update emp_19499 set mgr_id = null where emp_id = 19599;
update emp_19499 set mgr_id = null where emp_id = 19619;
update emp_19499 set mgr_id = null where emp_id = 19639;
update emp_19499 set mgr_id = null where emp_id = 19659;
update emp_19499 set mgr_id= 19499 where mgr_id = 19679;
update emp_19499 set mgr_id = null where emp_id =19499;
commit;


-- 
select * from emp_19499 where salary in ( select salary from emp_19499 where emp_id between 19529 and 19629);


-- 
SELECT a.last_name, a.salary, a.dept_id,b.salavg
from emp_19499 a, (SELECT dept_id, AVG(salary) salavg from emp_19499 group by dept_id) b
where a.dept_id = b.dept_id
and a.salary > b.salavg;


-- 
select * from dept_19499 where dept_id not in ( select dept_id from emp_19499);


-- 
select * from dept_19499 where dept_id not in ( select dept_id from emp_19499);


-- 
COLUMN report_date_col NEW_VALUE report_date
col report_date_col noprint
SELECT TO_CHAR( SYSDATE ,'DD-Mon-YYYY') AS report_date_col FROM dual;

TTITLE CENTER ' EMPLOYEE SALARY REPORT ' SKIP 1 - 
LEFT 'DATE : ' &report_date RIGHT 'PAGE:' SQL.PNO SKIP 2

BTITLE CENTER 'CONFIDENTIAL REPORT'

BREAK ON DEPARTMENT

COLUMN Annual_Salary  HEADING 'Annual Salary'
COLUMN Annual_Salary justify left format $999,990.00

select substr(dept_name,1,20) "Department Name", substr(first_name,1,20) || ' ' || substr(last_name,1,20) "Employee Name" ,
CASE WHEN (nvl(salary,0) * 12) < 15000 then (nvl(salary,0)+nvl(comm_pct,0)*12) 
ELSE (nvl(salary,0) * 12)
END AS "Annual Salary"
from emp_19499 emp , dept_19499 dept 
where emp.dept_id = dept.dept_id ;