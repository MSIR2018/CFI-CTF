drop database if exists ctf;
create database ctf;
use ctf;

create table messages (
id int (3) not null auto_increment,
message varchar (255),
Primary Key (id));