create table bins(a number);

create or replace trigger m1
before delete on emp
for each row
declare
a number;
begin
select count(*) into a from emp;
insert into bins values(a);
end;


delete from emp where empno=7934;
