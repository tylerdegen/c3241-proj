create table BOOKS
(ISBN varchar(15) not null,
Title varchar(30) not null,
Year int,
Price real,
Genre varchar(15),
Pub_Name varchar(30),
primary key(ISBN),
foreign key(Pub_Name) references PUBLISHERS(Name)
);

create table STORED_IN
(
Book_ISBN varchar(15) not null,
Ware_ID_Num int not null,
Quantity int not null,
foreign key(Book_ISBN) references BOOK(ISBN),
foreign key(Ware_ID_Num) references WAREHOUSES(ID_Num)
);

create table BOOK_PURCHASES
(
Book_ISBN varchar(15) not null,
Order_Num int not null,
foreign key(Book_ISBN) references BOOK(ISBN)
foreign key(Order_Num) references PURCHASES(Order_Num)
);

create table BOOK_AUTHORS
(
Book_ISBN varchar(15) not null,
A_Name varchar(15) not null,
foreign key(Book_ISBN) references BOOKS(ISBN)
foreign key(A_Name) references AUTHORS(Name)
);

create table PUBLISHERS
(
Name varchar(30) not null,
Address varchar(60),
primary key(Name)
);

create table WAREHOUSES
(
ID_Num int not null,
Address varchar(60) not null,
Manager varchar(30),
Phone_Num varchar(15),
primary key(ID_Num)
);

create table PURCHASES
(
Order_Num int not null,
Date date not null,
Amount int not null,
Cust_Username varchar(30),
primary key(Order_Num),
foreign key(Cust_Username) references CUSTOMERS(Username)
);

create table AUTHORS
(
Name varchar(15) not null,
Genre varchar(15),
Pub_name varchar(30),
primary key(Name),
foreign key(Pub_Name) references PUBLISHERS(Name)
);

create table MERCH_PURCHASES
(
Prod_Num int not null,
Order_Num int not null,
foreign key(Prod_Num) references MERCHANDISE(Product_Number),
foreign key(Order_Num) references PURCHASES(Order_Num)
);

create table MERCHANDISE
(
Product_Number int not null,
Name varchar(30) not null,
Type varchar(15),
Manufacturer varchar(30),
Book_ISBN varchar(15),
primary key(Product_Number),
foreign key(Book_ISBN) references BOOKS(ISBN)
);

create table CUSTOMERS
(
Username varchar(30) not null,
C_First_Name varchar(15) not null,
C_Last_Name varchar(15) not null,
Password varchar(15) not null,
Email varchar(30) not null,
Phone_Number varchar(15) not null,
primary key(Username)
);

create table TEMP
(
ISBN varchar(15),
Title varchar(30),
Author varchar(30),
Publisher varchar(30),
Year int,
Price real,
Category varchar(15)
);