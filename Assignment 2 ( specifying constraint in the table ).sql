create table Department(
Deptno numeric(3) primary key,
Dname varchar(20) Unique,
Location varchar(20) not null check(Location in ('Delhi','Pune','Agra')));

insert into department
values('456','pne','aligarh'); -- error will occur

insert into department
values('456','pne','Delhi'); -- as it is likhna hai jo check condition mein lagaya hai.
 
 create table Employee(
 Empno varchar(5) primary key check(Empno like 'E%'),
 Ename varchar(20) Unique,
 Designation varchar(20) not null, 
 Salary numeric(10) default 25000 check(Salary>15000 and Salary<50000),
 DOB date not null,
 Dno numeric(3),								   
 FOREIGN KEY(Dno) references Department(deptno));
 
insert into employee
values('456','sunil','manager',null,'1996-02-05','456'); -- error aayega

insert into employee(empno) values ('E457'); -- another way to insert value   

create table Candidate(
Candidate_Id numeric(6) primary key,
Candidate_Name varchar(20) not null,
Candidate_Email varchar(30) unique check (Candidate_Email like '%@%.%'),
Candidate_Dept varchar(2) default 'HR',
Manager_Id 	numeric(6),
FOREIGN KEY (Manager_ID) REFERENCES CANDIDATE(Candidate_ID));
