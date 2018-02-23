drop database if exists flag_team_A;
create database flag_team_A;
use flag_team_A;

create table utilisateurs (
id_user int (3) not null auto_increment,
login varchar (20),
password varchar(20),
Primary Key (id_user));

insert into utilisateurs values ('','user','4dm1n1str@tor');
