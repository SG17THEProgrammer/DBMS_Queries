Create Table Student3 (
roll_no int Primary Key ,
Sname varchar(10) not null , 
linkedin varchar(50) unique,
mobile_no numeric(10) unique not null, 
country varchar(15) not null default 'India',
gender char(1) check(gender in ('M','F'))); -- m aur f hi jayega isme aur kuch daaloge toh error aayega 

-- above thing is called check constraint.
-- jo quotes mein likh doge wohi jayega aur kuch nhi lega wo 

insert into Student1
values (1,'Amit',null,1234567891);

insert into Student2
values (64,'Shray',null,9760097089,
	   (58,'Sandook',null,4563218964,'USA');
		


Select * from Student1;
Select * from Student2;


create table college(
cName varchar(10),
cCity varchar(10),
enrollment int,
primary key(cName, cCity));	
		
insert into college
values('IIT','Delhi',12000),
      ('IIT', 'Kanpur',10000),
      ('IIT','Delhi',15000 );