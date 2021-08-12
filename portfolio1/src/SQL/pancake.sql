create database pancake;
use pancake;

create table member(
mno int primary key auto_increment,
id varchar(20) not null,
password varchar(30) not null,
name varchar(50) not null,
email varchar(100) not null,
phone varchar(50),
checkbox int not null)
image varchar(500));

create table board(
bno int primary key auto_increment,
title varchar(50) not null,
contents varchar(3000) not null,
writer varchar(50) not null,
date datetime default current_timestamp not null,
count int);

create table reply(
rno int primary key auto_increment,
rcontents varchar(3000) not null,
rwriter varchar(50) not null,
date datetime default current_timestamp not null,
bno int,
foreign key(bno) references board(bno) on delete cascade);
