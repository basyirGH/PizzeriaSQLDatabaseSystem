use Pizzeria;

insert into Customer(customerNo, firstName, lastName, phone, address) values
(3001, 'Ahmad', 'Amran', '0123344231', '90, Jalan 6, Taman Bulan'), 
(3002, 'Siti', 'Kalsum', '0987765123', '67, Jalan Ambang, Taman Segar'), 
(3003, 'Siti', 'Kalsum', '0176652412', '43, Jalan 9, Taman Bulan'), 
(3004, 'Amir', 'Iqbal', '0164244411', '23, Jalan 2, Taman Bulan'), 
(3005, 'Paul', 'Vincent', '0144635279', '11, Jalan Ambang, Taman Segar'), 
(3006, 'Aminah', 'Ali', '0145278455', '90, Jalan Mekar, Taman Segar');

insert into Orders(orderNo, orderTime, customerNo) values
(6001, '15:55:45', 3001),
(6002, '16:54:35', 3002),
(6003, '16:08:15', 3003),
(6004, '16:15:30', 3004),
(6005, '22:34:19', 3005),
(6006, '22:22:10', 3006);

insert into Topping(toppingID, toppingName, toppingPrice) values
('SAUS', 'Sausage', 5.00),
('PEPO', 'Pepperoni', 5.00),
('MUSH', 'Mushroom', 5.00),
('BELL', 'Bell Peppers', 5.00),
('BELL_SAUS', 'ComboPeppersSausage', 8.00),
('PEPO_MUSH', 'ComboPeppoMushroom', 8.00);

insert into Pizza_Product(pizzaNo, pizzaName, orderNo) values
(7001, 'Cheese Sausage', '6001'),
(7002, 'Cheese Pepperoni', '6002'),
(7003, 'Beef Pepperoni', '6003'),
(7004, 'Cheese Pepperoni', '6004'),
(7005, 'Tuna Mushroom', '6004'),
(7006, 'Beef Pepperoni', '6005'),
(7007, 'Beef Pepperoni', '6005'),
(7008, 'Chicken Peppers & Sausage', '6006');

insert into Pizza(pizzaNo, pizzaSize, pizzaType, pizzaSizePrice, pizzaTypePrice) values
(7001, 'Medium', 'Cheese', 10.00, 15.00),
(7002, 'Medium', 'Cheese', 10.00, 15.00),
(7003, 'Large', 'Beef', 15.00, 20.00),
(7004, 'Large', 'Cheese', 15.00, 15.00),
(7005, 'Medium', 'Tuna', 10.00, 16.00),
(7006, 'Medium', 'Beef', 10.00, 20.00),
(7007, 'Medium', 'Beef', 10.00, 20.00),
(7008, 'Large', 'Chicken', 15.00, 17.00);

insert into Pizza_Product_Topping(pizzaNo, toppingID) values
(7001, 'SAUS'),
(7002, 'PEPO'),
(7003, 'PEPO'),
(7004, 'PEPO'),
(7005, 'MUSH'),
(7006, 'PEPO'),
(7007, 'PEPO'),
(7008, 'BELL_SAUS');