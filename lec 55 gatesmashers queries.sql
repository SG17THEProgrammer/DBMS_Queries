 --create table emp (eid int , ename varchar(30) , dept varchar(40)  ,salary int );
-- insert into emp values(1 ,'ram',  'hr', 10000),
--                        (2,'amrit','mrkt', 20000),
--                        (3,'ravi' ,'hr',  30000),
--                        (4,'nitin','mrkt', 40000),
--                        (5,'varun','it', 50000);

--Name who has highest salary  
--select ename from emp where salary=(select max(salary) from emp);


--showing error (can't resolve) for Second highest salary 

--select max(salary) from ((select * from emp) except (select * from emp where 
--salary=(select max(salary) from emp)));


-- Find Second highest salary 
--select max(salary) from emp where salary <>(select max(salary) from emp);

--Find name who has Second highest salary
-- select ename from emp where  
-- salary=(select max(salary) from emp where salary <>(select max(salary) from emp));

--note: '=' tab use krte hai jab ek value se compare krna hota hai 
--      'in' tab use krte hai jab multiple values ko compare krte hai 

--display all dept names along with no. of employees working in it 

-- select dept , count(dept) 
-- /*(yahan pr hum bss dept likh skte hai uske alawa kuch aur nhi 
-- kyonki yahan humne "group by" dept pr lagaya hai)*/ 
-- from emp group by dept 

-- display all dept names where no. of employees are less than 2 
--select dept from emp group by dept having   count(dept)<2

--group by ke andar where nhi lga skte having lagana padta hai 

-- select ename from emp where dept = /*in bhi lga skte hai = ki jagah */
-- (select dept from emp group by dept having   count(dept)<2)
     
--display highest salary department wise and name of emp 
-- select ename , dept , max(salary)  from emp group by dept ,ename ,salary 
-- having salary in
-- (select  max(salary) as  highest_salary_department_wise 
-- from emp group by dept)

--create table empl (eid  int PRIMARY KEY, ename varchar(30) , address varchar(50));
--create table project (eid int, FOREIGN KEY(eid) references empl(eid) , 
--pid int primary key  , pname varchar(30) , location varchar(30)) 

-- insert into empl values ( 1 , 'ravi' , 'chd'),
--                         ( 2 , 'varun' , 'delhi'),
--                         ( 3 , 'nitin' , 'pune'),
--                         ( 4 , 'robin' , 'banglore'),
--                         ( 5 , 'ammy' , 'chd');
                        
-- insert into project values ( 1 , 1, 'iot' , 'banglore'),
--                         ( 5 , 2, 'bigdata' , 'delhi'),
--                         ( 3 , 3,  'retail' , 'mumbai'),
--                         ( 4 ,4 ,'android' , 'hyderabad');
                        
-- name of emps who are working on a project
--select ename from empl where eid in ( select distinct(eid) from project )

--Exist and not exist 

--find detail of emp who is working on at least one project 
--select * from empl where exists (select eid from project where empl.eid=project.eid)

--note: exists top to bottom kaam krta hai mtlb outer query mein se 1 by 1 row uthayenge
--aur check krenge ki wo value exist kr rhi hia ki nhi in other/inner table 

--select * from empl where not exists (select eid from project where empl.eid=project.eid)

--find nth highest salary 
--below  is correlated nexted query 
--(mtlb jab outer query ki voi bhi value/table hum inner mein use krte hai) 

-- select ename, eid , salary from emp as e1 where 3-1 
-- /*((N-1) where n= konsi highest salary nikalni hai)*/ 
-- =(select count(distinct salary ) from emp as e2 where e2.salary>e1.salary)

--e1 ki pahali tuple e2 ki saari tuple se compare hogi aur phir so on  


































