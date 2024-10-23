create table College(
cName varchar(10) primary key,
state varchar(10),
enrollment int);

create table Student (
sID int primary key ,
sName varchar(10),
GPA numeric(2,1),
sizeHS int);

create table Apply (
sID int unique  ,
foreign key (sID) references student(sID),  -- sID should be unique in order to make it primary key 
cName varchar(10) unique,
foreign key (cName) references college(cName), -- same goes here(above thing)
major varchar(25),
CONSTRAINT PK_Apply PRIMARY KEY ('sID','cName','major'),
decision varchar(3) not null);


