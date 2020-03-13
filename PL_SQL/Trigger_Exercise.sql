create table student(id number,name varchar(15),gender char(10));
insert into student values(1,'abhi',null);
insert into student values(2,'ashish', null);
insert into student values(3,'namrata',null);
alter table student add  email varchar(20);
update student set email='asg@gmail.com' where id=2;

--Example 1: Write a trigger to check wthether entered name is in upper case or not.

Create or replace trigger tname
before insert or update of name on student 
for each row 
begin
if :new.name<>upper(:new.name) then
raise_application_error(-20111,'Name is not in upper case');
end if;
end;

insert into student values(4,'dt','M');


--Example 2 : E mail validation
create or replace trigger validemail
before insert or update of email on student
for each row 
begin
if((instr(:new.email,'@',1)=0)) or ((instr(:new.email,' ',1)>0)) then
raise_application_error(-20112,'email is not valid');
end if;
end;


update student set email='nam.gmail.com' where id=3;
