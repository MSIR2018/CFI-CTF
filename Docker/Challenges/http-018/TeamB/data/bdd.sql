drop database if exists flag_team_B;
create database flag_team_B;
use flag_team_B;

create table utilisateurs (
id_user int (3) not null auto_increment,
login varchar (20),
password varchar(20),
Primary Key (id_user));

insert into utilisateurs (login,password) values ('user','@dm1n1str4tor');
