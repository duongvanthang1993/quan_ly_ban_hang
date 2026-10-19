create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(100) not null,
cAge int
);
create table Product(
pID int primary key,
pName varchar(100) not null,
pPrice decimal(10, 2) not null
);
create table `Order`(
oID int primary key,
cID int not null,
oDate date,
oTotalPrice decimal(12, 2),
foreign key(cID)references Customer(cID)
);
create table OrderDetail(
oID int,
pID int,
odQTY int not null,
primary key (oID,pID),
foreign key(oID) references `Order`(oID),
foreign key(pID) references Product(pID)
);