select * from emp;

--Trigger-1
create or replace trigger t 
before insert or update or delete on emp
begin
case 
when inserting then
dbms_output.put_line('data has been inserted');
when updating then 
dbms_output.put_line('data has been updated');
when deleting then
dbms_output.put_line('data has been deleted');
end case;
end;

create or replace trigger t1
before update of sal,comm on emp
begin
case
when updating('sal') then
dbms_output.put_line('salary updated');
when updating('comm') then
dbms_output.put_line('commission updated');
end case;
end;

update emp set sal=sal+100 where empno=7839;

--Disable trigger
alter trigger  t disable;

--Example 3 : Trigger Logs Changes to EMPLOYEES.SALARY
CREATE TABLE Emp_log (empno NUMBER,Log_date DATE,New_salary NUMBER,Old_salary number,Action VARCHAR2(20));

create or replace trigger salary_change
after update of sal on emp
for each row
begin
insert into Emp_log values(:new.empno,sysdate,:new.sal,:old.sal,'updated salary');
end;

select * from Emp_log;

--Example 4: Salary Difference
create table sal_diff(empno number,New_salary number,old_salary number,diff number,logdate date,vuser varchar(25));

create or replace trigger sal_diff
after update of sal on emp
for each row
declare
diff number;
vuser varchar(25);
begin
diff:=:new.sal-:old.sal;
select user into vuser from dual;
insert into sal_diff values(:new.empno,:new.sal,:old.sal,diff,sysdate,vuser);
end;

update emp set sal=sal+100 where empno=7839;

select * from sal_diff;

--Example 5: Audit

create table eaudit(newcomm number,oldcomm number,mdate varchar(25),vuser varchar(25),operation char(20));

create or replace trigger empaudit
after insert or update or delete on emp
for each row
declare
vuser varchar(25);
mdate varchar(25);
begin
select user,to_char(sysdate,'DD/MON/YYYY HH24:MI:SS') into vuser,mdate from dual;
if inserting then
insert into eaudit values(:new.comm,:old.comm,mdate,vuser,'inserted');
elsif updating then
insert into eaudit values(:new.comm,:old.comm,mdate,vuser,'updated');
else
insert into eaudit values(null,:old.comm,mdate,vuser,'deleted');
end if;
end;

select * from eaudit;
update emp set comm=100 where empno=7839;
delete from emp where empno=7839;

--Note : check user login/logoff (system triggers)
