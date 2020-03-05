--If Else

declare 
       sal employee.salary%TYPE;
BEGIN
     select salary into sal from employee where empid='H0019';
     IF sal>50000 then
     dbms_output.put_line('Senior');
     else
     dbms_output.put_line('junior');
     end if;
end;

--iF elsif else

declare 
       sal employee.salary%TYPE;
BEGIN
     select salary into sal from employee where empid='G0021';
     if sal>=40000 and sal<=80000 then
     dbms_output.put_line('Senior');
     elsif sal>=30000 and sal<=39000 then
     dbms_output.put_line('junior');
     else 
     dbms_output.put_line('fresher');
     end if;
end;
