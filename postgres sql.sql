	DROP TABLE CUSTOMER; 
	CREATE TABLE CUSTOMER (
		id serial PRIMARY KEY,
		name VARCHAR ( 50 ) NOT NULL,
		city CHAR (20) NOT NULL,
		state CHAR (20)  NOT NULL,
		age int NOT NULL,
		created_at  TIMESTAMP  default current_timestamp     
	);

select current_timestamp

INSERT INTO CUSTOMER(name,city,state,age)
VALUES ('shray' , 'mathura' , 'uttar pradesh', 18),
       ('kokila' , 'mathura' , 'uttar pradesh', 35 ),
        ('tapu' , 'ahemdabad' , 'gujrat', 20),
       ('sonu' , 'ahemdabad' , 'gujrat', 20),
       ('elon musk' , 'Teltow' , 'berlin', 20); 
	   
	  select * from CUSTOMER
	 
	 delete FROM  CUSTOMER 
	 WHERE id=2
	 
	select city ,max(age) as max_age from CUSTOMER 
	group by city order by max_age desc 
	 
	 
SELECT max(age) as max_age , city  FROM  CUSTOMER 
group by city

select * from CUSTOMER 
WHERE (age , city) in  (SELECT max(age) as max_age , city  FROM  CUSTOMER 
group by city )


select row_number() over (partition by city order by age desc)  as row_no , city from Customer
where 











