--bacchon aur collge ke naam
--Select sname from student union select cname from college ;

--college aur student ke naam mein common
--select sname from student intersect select cname from college;

--jinka gpa amy ke gpa ke barabar hai
--select gpa from student where sname='Amy'; -- pahale amy ka gpa niakal hai
--select * from student where gpa in (select gpa from student where sname='Amy');
-- note: bracket mein jo likha hai ussse kahte hai subquery ya inner query 

--Find the name of students who applies to same college where irene have applied 
--select distinct sid from apply where cname in (select cname from apply where sid in (select sid from student where sname='Irene'))

-- select cName , count(*) from apply group by cName
-- having count(sID)>=(select count(sID) from apply
-- where cName='Stanford')

create table summary as select cname , count(*) from apply group by cname;
select * from summary

create table s_backup as select * from student;
select * from s_backup;


