create database playstoreDB;
use playstoreDB;
create table developers(
 dev_id int primary key,dev_name varchar(60) not null,country varchar(30) not null,found_year int);
 insert into developers values
 (101,'google llc','usa',1998),
 (102,'meta platforms','usa',2004),
 (103,'spotify ab','sweden',2006),
 (104,'canva pty ltd','australia',2012),
 (105,'byju"s','india',2011)
 ;
 select * from developers;
 create table publishers(
 publisher_id int primary key,publisher_name varchar(60),head_office varchar(40),support_email varchar(60));
 insert into publishers values
 (201,'google play','california','support@google.com'),
 (202,'samsung galaxy store','seoul','suppot@samsung.com'),
 (203,'huawei appgallery','shenzhen','support@huawei.com'),
 (204,'amazon appstore','seattle','support@amazon.com');
 select * from publishers;
 create table categories(
category_id int primary key,category_name varchar(40),minimum_age int );
insert into categories values
(301,'education',3),
(302,'productivity',3),
(303,'music',12),
(304,'social',13),
(305,'gaming',16);
select * from categories;
create table apps(
app_id int primary key,app_name varchar(60),dev_id int,publisher_id int ,category_id int,rating decimal(2,1),downloads bigint,price decimal(6,2));
insert into apps values
(1001,'google classroom',101,201,301,4.6,500000000,0),
(1002,'google keep',101,201,302,4.5,1000000000,0),
(1003,'instagram',102,201,304,4.4,5000000000,0),
(1004,'spotify',103,201,303,4.5,1000000000,0),
(1005,'canva',104,201,302,4.7,500000000,0),
(1006,'byju"s learning',105,201,301,4.3,100000000,0),
(1007,'candy crush',102,204,305,4.6,1000000000,0),
(1008,'temple run',104,203,305,4.2,500000000,0);
select * from apps;
insert into developers values(106,'openai','usa',2015);
select * from developers;
insert into categories values(306,'artifical intelligence',12);
select * from categories;
insert into apps values(1009,'chatgpt',106,201,302,4.8,1000000000,0);
select * from apps;
update apps
set rating=4.5 where app_id=1008;
select * from apps;
delete from developers where dev_id=105;
select * from developers;
update publishers
set support_email='suport@galaxy.com' where publisher_id=202;
select * from publishers;
insert into apps values
(1010,'duolingo',103,201,302,4.7,750000000,0),
(1011,'canva design',104,202,301,4.8,600000000,0);
select * from apps;
update apps
set price=199 where app_id=1006;
select * from apps;
delete from categories
where category_id=303;
select * from categories;
