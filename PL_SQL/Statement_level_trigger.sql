create table student(id number,name varchar(15),gender char(10));
insert into student values(1,'abhi',null);
insert into student values(2,'ashish', null);
insert into student values(3,'namrata',null);

create or replace trigger t1
before update of gender on student
begin
dbms_output.put_line('statement level trigger executed on student table');
end;

update student set gender='M' where id=1;
update student set gender='m' WHERE id in(1,2,3);

select to_char(sysdate,'Dy') from dual;
