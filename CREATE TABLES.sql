create database Pizzeria;

use Pizzeria;

create table Customer(
	customerNo int(10) primary key,
	firstName varchar(255) ,
	lastName varchar(255) ,
	phone int(10) ,
	address varchar(255));    
    
create table Orders(
	orderNo int(10) primary key,
	orderTime time,
	customerNo int(10),
    foreign key (customerNo)
		references Customer (customerNo)
        on update cascade
        on delete cascade);

create table Topping(
	toppingID varchar(255) primary key,
	toppingName varchar(255),
	toppingPrice double (10,2));
    
create table Pizza_Product(
	pizzaNo int(10) primary key,
	pizzaName varchar (255) ,
	orderNo int (10),
    foreign key (orderNo)
		references Orders (orderNo)
		on update cascade
		on delete cascade);
    
create table Pizza(
	pizzaNo int (10),
	pizzaSize varchar(255),
	pizzaType varchar(255),
	pizzaSizePrice double(10, 2),
	pizzaTypePrice double(10, 2),
    foreign key (pizzaNo)
		references Pizza_Product (pizzaNo)
        on update cascade
        on delete cascade);

create table Pizza_Product_Topping(
	pizzaNo int(10),
	toppingID varchar(255),
    foreign key (pizzaNo)
		references Pizza_Product (pizzaNo)
        on update cascade
        on delete cascade,
	foreign key (toppingID)
		references Topping (toppingID)
        on update cascade
        on delete cascade);

