-- konse college mein kitni application aayi hai
--select cname , count(*) from apply group by cname;

--select major , count(*) from apply group by major;

--list unki jinhone jisme kum se kum 3 major me apply kiya ho 
--select major , count(*) from apply group by major order by count(*) desc;
-- by default asc krega 

--select major , count(*) from apply group by major where count(*) >=3 ; -- error dega 
--select major , count(*) from apply group by major having count(*) >=3 ; -- chal jayega 

--select cname , count(*) from apply group by cname having count(*)>=5 order by count(*);

-- duplicate pta lag gaye
--select sname,count(*) from student group by sname having count(*)>1 order by count(*);

--select a.sid , count(a.sid) from student s  left outer join apply a  on s.sid = a.sid ;

-- que 23. jin bacchon ne kahin bhi apply nhi kiya 
--select s.sid , count(major) from student s  left outer join apply a  on s.sid = a.sid group by s.sid ;

--select s.sid , count(major) from student s  left outer join apply a  on s.sid = a.sid group by s.sid having count(major)=0;

-- college ki details jisme kisi ne apply nhi kiya hai 
select college.cname , count(major) from college left outer join apply on college.cname = apply.cname group by college.cname having count(major)=0; 
 
--  distinct vs unique 
--  having vs where 
--  group by vs order by 
 
 
 
 
 
 
 
 
 
 
 