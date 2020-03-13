1: {m} matches m times
2: {m,} matches atleast m times
3: {m,n} matches atleast m times but not more than n times
4: ^     first character in the given string. But ^ symbol in the character class ie [^A-x] acts like negation.
5: $ last character in the given string
6: any digit   [[:digit:]]      [0-9]
7: \w  any word


Example of regexp_like

1: select * from employees where regexp_like(phone_number,'[0-9]{3}.[0-9]{3}.[0-9]{4}');
2: select * from employees where regexp_like(phone_number,'[[:digit:]]{3}.[[:digit:]]{3}.[[:digit:]]{4}');
3: select * from employees where regexp_like(phone_number,'\d{3}.\d{3}.\d{4}');
4: select * from employees where regexp_like(last_name,'[:AEIOU:]');
5: select * from employees where regexp_like(last_name,'[A-C]');
6: select * from employees where regexp_like(last_name,'^[^A-C]');
7: select * from employees where regexp_like(phone_number,'^[:0:]+');
8: select * from employees where regexp_like(phone_number,'\d{5,}$');
9: select * from employees where regexp_like(last_name,'K(i|o|h)');


Example of regexo_substr

1: select PHONE_NUMBER,regexp_SUBSTR(phone_number,'^[0-9]{3}') as p from employees;
