ALTER TABLE apply
ADD CONSTRAINT fk_apply_sid
FOREIGN KEY (sid) REFERENCES student(sid);

/* in first bracket we write the column name  
which we want to be the foreign key
then table_name(column_name) after references */

ALTER TABLE apply
ADD CONSTRAINT fk_apply_cname
FOREIGN KEY (cname) REFERENCES college(cname);

alter table apply
alter column major type varchar(25);

ALTER TABLE apply
ADD decision varchar(3) not null ;
       
alter table apply
alter column decision type char(1);      










