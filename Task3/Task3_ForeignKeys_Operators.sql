use playstoreDB;
insert into developers values(105,'byju"s','india',2011);
alter table apps
add constraint fk_developer
foreign key (dev_id)
references developers(dev_id);
select * from apps;
alter table apps
add constraint fk_publisher
foreign key (publisher_id)
references publishers(publisher_id);
insert into categories values(303,'music',12);
alter table apps
add constraint fk_category
foreign key (category_id)
references categories(category_id);
select app_name from apps where rating>4.5;
select app_name from apps where price=0;
select app_name from apps where category_id=305;
select app_name from apps where downloads > 500000000;
select app_name from apps where rating between 4.3 and 4.7;
select app_name from apps where price in (0,299);
select app_name from apps where app_name like 'g%';
select app_name from apps where app_name like '%google%';
select app_name from apps where rating >4.0 and downloads>500000000;
select app_name from apps where category_id=301 or category_id=305;
select app_name from apps where app_name not like 'g%';
select app_name from apps where rating <4.5 or downloads>1000000000;
select dev_name from developers where dev_name like '%a%';
select app_name from apps where price between 0 and 300;
select app_name from apps where publisher_id=201 or publisher_id=204;
select app_name from apps where not category_id=305;
