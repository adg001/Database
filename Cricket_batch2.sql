Create table Game(gameno int primary key,team1 varchar2(20),team2 varchar2(20),venue varchar2(20),dom date,winner varchar2(20))
insert into Game values(2324,'Pakistan','India','Peshawar','06-Feb-2006','team1');
insert into Game values(2327,'Pakistan','India','Rawalpindi','11-Feb-2006','team2');
insert into Game values(2357,'India','England','Delhi','28-Mar-2006','team1');
insert into Game values(2377,'West Indies','India','Kingston','18-May-2006','team2');
insert into Game values(2404,'Srilanka','India','Colombo','16-Oct-2006','Abandoned');
insert into Game values(2440,'India','Australia','Mohali','29-Nov-2006','team2');
insert into Game values(2449,'South Africa','India','Cape Town','26-Nov-2006','team1');
insert into Game values(2480,'India','West Indies','Nagpur','21-Jan-2007','team1');
insert into Game values(2493,'India','West Indies','Vadodara','31-Jan-2007','team1');
insert into Game values(2520,'India','Sri Lanka','Rajkot','11-Feb-2007','team2');
insert into Game values(2611,'England','India','Southampton','21-Oct-2007','team1');
insert into Game values(2632,'India','Australia','Mumbai','17-Oct-2007','team1');
insert into Game values(2643,'India','Pakistan','Guwahati','05-Nov-2007','team2');
insert into Game values(2675,'Australia','India','Melboune','10-Feb-2008','team2');
insert into Game values(2681,'India','Sri Lanka','Adelaide','19-Feb-2008','team1');
insert into Game values(2688,'Australia','India','Sydney','02-Mar-2008','team2');
insert into Game values(2689,'Australia','India','Brisbane','03-Mar-2006','team2');
insert into Game values(2717,'Pakistan','India','Karachi','26-Jun-2008','team2');
insert into Game values(2750,'Sri Lanka','India','Colombo','24-Sep-2006','team2');
insert into Game values(2755,'Sri Lanka','India','Colombo','27-Sep-2008','team2');


Create table player(pid int primary key,lname varchar(15),fname varchar(15),country varchar(15),yborn int,bplace varchar(15),ftest int);
insert into player values(89001,'Tendulkar','sachin','india',1973,'mumbai',1989);
insert into player values(90001,'Lara','Brian','West Indies',1969,'Santa Cruz',1990);
insert into player values(95001,'Ponting','Ricky','Australia',1974,'Launceston',1995);
insert into player values(96001,'Dravid','Rahul','india',1973,'Indore',1996);
insert into player values(96002,'Gibbs','Herschelle','South Africa',1974,'Cape Town',1996);
insert into player values(92001,'Warne','shane','Australia',1969,'mMelbourne',1992);
insert into player values(95002,'Pollock','Shaun','South Africa',1973,'Port Elizabeth',1995);

insert into player values(99003,'Vaughan','Michael','England',1974,'Manchester',1989);
insert into player values(92003,'Ul-Huq','Inzamam','Pakistan',1970,'Multan',1992);
insert into player values(94004,'Fleming','Stephen','New Zealand',1973,'Christchurch',1994);
insert into player values(93002,'Kumble','Anil','india',1970,'Bangalore',1990);
insert into player values(93003,'Kirsten','HGary','South Africa',1974,'Cape Town',1993);
insert into player values(95003,'Kallis','Jacques','South Africa',1975,'Cape Town',1995);
insert into player values(94002,'Vaas','Chaminda','Sri Lanka',1974,'Mattumagala',1994);

insert into player values(92002,'Murli','Muthiah','Sri Lanka',1972,'Kandy',1992);
insert into player values(97004,'Vettori','Daniel','New Zealand',1979,'Auckland',1997);
insert into player values(25001,'Dhoni','MS','India',1981,'Ranchi',2005);
insert into player values(23001,'Singh','Yuvraj','india',1981,'Chandigarh',2003);
insert into player values(96003,'Ganguly','Sourav','India',1972,'Calcutta',1996);
insert into player values(99002,'Gilchrist','Adam','Australia',1971,'Bellingen',1999);
insert into player values(24001,'Symonds','Andrew','Australia',1975,'Birmingham',2004);

insert into player values(99001,'Lee','Brett','Australia',1976,'wollongong',1999);
insert into player values(91001,'Jayasuriya','Sanath','Sri Lanka',1969,'Matara',1991);
insert into player values(21001,'Sewagh','Virendra','India',1978,'Delhi',2001);
insert into player values(98001,'Afridi','Shahid','Pakistan',1980,'Khyber',1998);
insert into player values(98002,'Singh','Harbhajan','India',1980,'Jalandhar',1998);
insert into player values(27001,'Kumar','Praveen','India',1986,'Meerut',null);
insert into player values(27002,'Sharma','Ishant','India',1988,'Delhi',2007);
insert into player values(99006,'Gough','Darren','England',1972,'Manchester',1995);
insert into player values(99007,'Flintof','Andrew','England',1979,'Manchester',2000);
insert into player values(99008,'Jones','Simon','England',1977,'LOndon',1998);

insert into player values(90002,'Hooper','Carl','West Indies',1965,'Jaimaica',1988);
insert into player values(90003,'Ambrose','Curtely','West Indies',1961,'St Juies',1981);
insert into player values(90004,'Russel','Andrae','West Indies',1981,'Santa Cruz',2001);
insert into player values(90005,'Powel','Ricordo','West Indies',1977,'Santa Cruz',1997);

insert into player values(92010,'Akram','Wasim','Pakistan',1971,'Karachi',1988);
insert into player values(92011,'Anwar','Saeed','Pakistan',1970,'Peshawar',1989);
insert into player values(92012,'Aktar','Shoaib','Pakistan',1975,'Rawalpindi',1996);

create table batting(gameno int, pid int,pos int,hout VARCHAR(5),fow int,nruns int,nballs int,
fours int,six int,constraints mp primary key(gameno,pid));

insert into batting values(2755,23001,3,'C',51,0,6,0,0);
insert into batting values(2755,25001,5,'C',232,71,80,4,0);
insert into batting values(2755,91001,1,'C',74,60,52,8,2);
insert into batting values(2755,94002,7,'LBW',157,17,29,1,0);
insert into batting values(2755,92002,11,'NO',200,1,7,0,0);
insert into batting values(2689,89001,2,'C',205,91,121,7,0);

insert into batting values(2689,23001,4,'C',175,38,38,2,0);
insert into batting values(2689,25001,5,'C',240,36,37,2,1);
insert into batting values(2689,99002,1,'C',2,2,3,0,0);
insert into batting values(2689,95001,3,'C',8,1,7,0,0);
insert into batting values(2689,24001,5,'C',123,42,56,2,1);
insert into batting values(2689,99001,8,'B',228,7,12,0,0);

insert into batting values(2689,27001,9,'C',255,7,7,1,0);
insert into batting values(2755,27001,9,'B',257,2,6,0,0);
insert into batting values(2689,98002,8,'LBW',249,3,3,0,0);
insert into batting values(2755,98002,8,'RO',253,2,4,0,0);
insert into batting values(2643,89001,1,'C',289,122,100,8,3);
insert into batting values(2717,89001,1,'C',223,100,100,10,0);
insert into batting values(2675,89001,1,'C',243,109,88,15,1);

create table bowling(gameno int,pid int,novers int,maidens int,nruns int,nwickets int,
constraints bmp primary key(gameno,pid));

INSERT INTO BOWLING VALUES(2689,99001,10,0,58,1);
INSERT INTO BOWLING VALUES(2689,23001,3,0,27,1);
INSERT INTO BOWLING VALUES(2689,24001,3,0,15,0);
INSERT INTO BOWLING VALUES(2755,94002,9,1,40,1);
INSERT INTO BOWLING VALUES(2755,92002,10,0,56,1);
INSERT INTO BOWLING VALUES(2755,91001,4,0,29,0);
INSERT INTO BOWLING VALUES(2755,23001,10,0,52,2);
INSERT INTO BOWLING VALUES(2755,98002,10,0,40,3);
INSERT INTO BOWLING VALUES(2689,98002,10,0,44,1);

INSERT INTO BOWLING VALUES(2324,98001,9,0,40,1);
INSERT INTO BOWLING VALUES(2324,27002,10,0,54,0);
INSERT INTO BOWLING VALUES(2324,98002,10,0,44,1);
INSERT INTO BOWLING VALUES(2357,27001,6,1,24,2);

INSERT INTO BOWLING VALUES(2449,89001,3,0,14,1);
INSERT INTO BOWLING VALUES(2449,95003,10,0,54,0);
INSERT INTO BOWLING VALUES(2449,95002,10,0,44,1);
INSERT INTO BOWLING VALUES(2449,27001,6,1,24,2);

INSERT INTO BOWLING VALUES(2681,94002,10,1,34,2);
INSERT INTO BOWLING VALUES(2681,91001,10,0,44,1);
INSERT INTO BOWLING VALUES(2681,92002,10,0,29,3);
INSERT INTO BOWLING VALUES(2681,21001,6,1,38,1);

INSERT INTO BOWLING VALUES(2611,99006,10,1,41,1);
INSERT INTO BOWLING VALUES(2611,99007,10,2,39,1);
INSERT INTO BOWLING VALUES(2611,99008,10,0,29,2);
INSERT INTO BOWLING VALUES(2611,23001,6,1,38,1);

INSERT INTO BOWLING VALUES(2493,90002,7,1,29,0);
INSERT INTO BOWLING VALUES(2493,90004,10,2,39,1);
INSERT INTO BOWLING VALUES(2493,21001,2,0,21,0);
INSERT INTO BOWLING VALUES(2493,27002,8,1,40,1);


INSERT INTO BOWLING VALUES(2717,92010,10,1,29,5);
INSERT INTO BOWLING VALUES(2717,92012,10,2,35,2);
INSERT INTO BOWLING VALUES(2717,21001,2,0,21,0);
INSERT INTO BOWLING VALUES(2717,27002,8,1,30,1);
INSERT INTO BOWLING VALUES(2717,89001,7,1,29,5);






