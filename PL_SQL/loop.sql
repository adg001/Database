--Simple loop

declare 
      counter number:=0;
      res number;
begin
    loop
       counter:=counter+1;
       res:=19*counter;
       dbms_output.put_line(res);
       if counter>=10 then
       exit;
       end if;
    end loop;
end;


declare 
      counter number:=0;
      res number;
begin
    loop
       counter:=counter+1;
       res:=19*counter;
       dbms_output.put_line(res);
     exit when counter>=10;
    end loop;
end;

--While Loop

declare 
      counter number:=1;
      res number;
begin
    while counter<=10 loop
       res:=19*counter;
       dbms_output.put_line(res);
     counter:=counter+1;
    end loop;
end;

