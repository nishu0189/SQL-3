# SQL-3


--TABKE meesho

create table meesho(id int,
name varchar(30),
qnty int,
discount int,
price int,
region varchar(30),
category varchar(40) );


-- drop table meesho

INSERT INTO meesho (id, name, qnty, discount, price, region, category)
VALUES
(1, 'Shirt', 10, 20, 500, 'North', 'Clothing'),
(2, 'Jeans', 15, 15, 1200, 'South', 'Clothing'),
(3, 'Shoes', 8, 25, 1500, 'West', 'Footwear'),
(4, 'Watch', 3, 30, 2000, 'East', 'Accessories'),
(5, 'Bag', 12, 10, 800, 'North', 'Bags'),
(6, 'Sunglasses', 12, 18, 700, 'South', 'Accessories'),
(7, 'Hat', 15, 5, 300, 'West', 'Clothing'),
(8, 'Wallet', 7, 20, 400, 'East', 'Accessories');

