create database railway;
use railway;
create table user(
user_id int not null,
first_name varchar(30),
last_name varchar(30),
age int not null,
gender char,
contact_number bigint,
email varchar(40),
primary key(user_id));


