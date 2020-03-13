create or replace trigger restrict_drop
before drop on database
begin
raise_application_error(-20201,'cannot drop table');
end;

create or replace trigger restrict_insert
before insert on student
begin
if (to_char(sysdate,'HH24:MI') NOT BETWEEN '09:00' and '18:00') then
raise_application_error(-20190,'cannot insert');
end if;
 end;
 
 insert into student values(7,'mom',null,null); 
