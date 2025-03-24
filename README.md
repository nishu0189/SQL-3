# SQL-3


📌 SQL Learning Repository
Welcome to my SQL Learning Repository, where I document my SQL journey, covering essential topics with practical queries. This repository serves as a reference for anyone looking to understand SQL concepts with hands-on examples.

📖 Topics Covered
✅ Aggregation Functions

SUM(), AVG(), MIN(), MAX(), COUNT()

Grouping data using GROUP BY

Filtering grouped data with HAVING

✅ STRING_AGG() Function

Concatenating values from multiple rows into a single string

Using STRING_AGG() with GROUP BY

Implementing custom delimiters

📂 Files in This Repository
sql_queries.sql – Contains all the queries I have practiced.

🚀 How to Use
Clone this repository:

git clone https://github.com/nishu0189/SQL-3.git
(Open the .sql file in MS SQL Server Management Studio (SSMS) or any preferred SQL environment.)
Run the queries and experiment with modifications.

📌 Future Additions
I will continue to add more SQL concepts and queries as I progress. Stay tuned for more updates!




------------------------------------------------------ TABLES IN  -----------------------------------------------------------------------
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

