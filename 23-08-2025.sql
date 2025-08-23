create database Worker;
show databases;
use Worker;
create table worker(
Workername Varchar(50) not null,
Worker_id int not null,
mobilenumber int not null,
workerposition Varchar(10)
);
insert into worker (Workername,Worker_id,mobilenumber,workerposition) values
('rajini',1,987654,'attender');
select * from workers;
insert into worker (Workername,Worker_id,mobilenumber,workerposition) values
('henry',2,76534,'manager');
alter table worker
drop index idx_mobile;
create index idx_mobile on workers(mobilenumber);


SHOW INDEXES FROM worker;
alter table workers 
modify Worker_id int;

ALTER TABLE worker
ADD CONSTRAINT unique_worker UNIQUE (Worker_id);

alter table worker
drop index unique_worker;

show indexes from worker;
describe worker;

#constraints examples


create database person;
show databases;
create table persons(
personname Varchar(40)not null,
personid int auto_increment primary key,
personage int check (personage>18 and personage<120)
);
insert into persons(personname,personage) values
('henry',26);
 alter table persons
 drop personage;
 select*from persons;
 alter table persons
 add personage int;
 select*from persons;
alter table persons
add constraint chk_1 check (personage>18 and personage<100);
insert into persons(personname,personage) values
('cavil',18);
select distinct personname from persons;
delete from persons 
where personid=1;

#foreign key constraints

create database category
use category;
create table categories(
cid int not null primary key,
cname varchar(30) not null,
cdes varchar(50) not null
);
insert into categories (cid,cname,cdes) values
(101,'pen','good');
insert into categories (cid,cname,cdes) values
(102,'carpets','very good');
create table products(
pid int not null primary key,
pname varchar(30) not null,
pdes varchar(40) not null,
cid int not null,
foreign key (cid) references  categories (cid)
);
insert into products (pid,pname,pdes,cid) values
(1,'fan','great',101);
select* from products;