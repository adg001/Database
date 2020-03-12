--Example 1
create or replace trigger tvoid
before insert or update or delete on emp
begin
if (to_char(sysdate,'Dy') in ('Thu','Fri','Sat')) then
raise_application_error(-20102,'Cannot perform DML operations on Thursday,Friday and saturday');
end if;
end;

update emp set sal=sal-100 where empno=789;
