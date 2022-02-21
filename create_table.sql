select * from students_management;
insert into teacher (id,name, gender) values ("6", "Chien", "nam");
insert into student values("6", "kien", "nam", "18", "viet nam");
alter table student;
select * from student order by name ASC;
select * from student order by name ASC;
select name from student;
select * from student;
select name from student where name is not null;
update student set id = 8, name = "cong anh" where id = "1";
update student set id = 9, name = 9 where id = 5;
select * from student;
select * from class;
create database shop;
create table shop.food(
id int not null,
name varchar(75) null,
quantity int null,
price int null,
expiredDate date	null,
primary key(id)
);

create table shop.drinks(
id int not null,
name varchar(75) null,
quantity int null,
price int null,
expiredDate date null,
primary key(id));
use shop;
insert into food (id,name, quantity, price, expiredDate) values ("1", "Mì trộn Indo", "99", "6000", "2023/12/1");
select * from food;
select sum(price) from food;
select avg(price) from food;
insert into food (id,name, quantity, price, expiredDate) values ("3", "Mì Cung Đình", "99", "6000", "2023/9/6");
select * from food;
rename table shop.food to shop.food1; 
rename table food1 to food;
use students_management;
use shop;
truncate table food;
select * from drinks;
delete from drinks where price = 500000; 
drop table food1;
alter table drinks rename to alcohol;
create database QuanLyDiemThi;
create table hocsinh(
mahs varchar(20) primary key,
tenhs varchar(50) null,
ngaysinh datetime null,
lop varchar(20),
gt varchar(20));
create table monhoc(
mamh varchar(20) primary key,
tenmh varchar(50));
create table bangdiem(
mahs varchar(20),
mamh varchar(20),
diemthi int,
ngaykiemtra datetime,
primary key(mahs, mamh),
foreign key(mahs) references hocsinh(mahs),
foreign key(mamh) references monhoc(mamh)
);
create table giaovien(
magv varchar(20) primary key,
tengv varchar(20),
SDT varchar(10)
);
alter table monhoc add magv varchar(20);
alter table monhoc add constraint fk_magv foreign key (magv) references giaovien(magv);
select * from hocsinh;
use quanlydiemthi;
select * from hocsinh;