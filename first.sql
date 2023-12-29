-- create database first;
-- use first;
-- Drop database first; 
-- Drop table one; 

-- create table one
-- (
-- 	firstname varchar(20),
--     lastname varchar(20),
--     Designation varchar(20),
--     salary decimal,
--     age int,
--     date_of_joining date
-- );

-- select * from one;
--  create new column
	-- alter table one
--     add companyname varchar(30)
    
-- change a column
	-- alter table one
--     change column companyname nameofthecompany varchar(40)

--  delete the column
	-- alter table one
--     drop column nameofthecompany;
    
-- truncate (only row deleted)

-- insert
-- insert into one value('harish','ssas','BA',34000.00,26,'2019-02-14'),
-- ('VIJAY','sara','BA',34000.00,26,'2019-02-22');

-- update
-- 	UPDATE one
-- SET age = 22
-- WHERE  age = 23;

-- select * from student_information;

-- create table student_information
-- (
-- 	Student_id int,
--     Student_name varchar(20),
--     Student_Branch varchar(20),
--     Student_fee decimal,
--     primary key (Student_id)
-- );

-- insert into student_information values('2','saikrishna1','Mechanical1','35798.00');


-- create table student_parents
-- (
-- 	Student_id  int ,
--     Studentguardian varchar(21),
--     foreign key(Student_id) references  student_information(Student_id)
-- );

-- insert into student_parents values('1','sekhar'),('2','sekhar2');

-- create table parent
-- (
-- 	id int not null auto_increment,
--     about varchar(250),
--     primary key (id)

-- );
-- insert into parent values('3','daferfer');
-- insert into child values('1','tkwyeguefkyrf'),('2','efydefwjefgjrf');
-- create table child 
-- (
-- 	child_id int,
--     additional_information varchar(123),
--     foreign key(child_id) references parent(id)
-- );

-- Inner join
-- all combine
-- select * from parent as a1
-- inner join 
-- child as a2
-- on 
-- a1.id =a2.child_id;

-- Inner join
-- only some columns

-- select a1.id,a1.about,a2.additional_information  from parent as a1
-- inner join 
-- child as a2
-- on 
-- a1.id =a2.child_id;

-- left join

-- select * from parent as a1
-- left join 
-- child as a2
-- on 
-- a1.id =a2.child_id;

-- view


-- create view myview
-- as select id,about from parent

-- select * from myview;

-- stored procedure

delimiter //
create procedure grandparent()
begin
select age from one;
end//

call grandparent();
