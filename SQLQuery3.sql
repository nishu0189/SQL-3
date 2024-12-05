

--AGGREGATION (SUM(),MIN(),MAX(), AVG(), VARIANCE(),STDDEV())
--COUNT(*) -> cnt the no. of row count(*)== count(1) == count(0)
--STRING_AGG() ->  Concatenates values from multiple rows into a single string with a specified delimiter.

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

select * from meesho;

--Basic Aggregations
Select count(*) , 
sum(price) as total,
avg(price) as average,
min(qnty) as mini_qnt,
max(qnty) as max_qnt
from meesho;

-- count func
select count(distinct category) 
from meesho;

-- STRING_AGG()
Select  region,  String_Agg(name,' , ')
from meesho
group by region;


--using GROUP BY 
select  region, sum(qnty) as no_ofqntper_region
from meesho  
group by region;

--using GROUP BY and WHERE CLAUSE
select  region, sum(qnty) as no_ofqntper_region --4
from meesho --1
where qnty>8  --2
group by region  --3
order by no_ofqntper_region; --5

--combination of col for group by
select region, category, sum (qnty)
from meesho
group by region, category;

--order function :- From , group by, agg func, having, select
--group by and HAVING CLAUSE
select region, --6 select is run after the having clause 
sum(qnty) as total  --4
from meesho --1
where qnty>5  --2
group by region  --3
HAVING sum(qnty) >10 --5 -- HAVING total>10 wrong  bcz total is assign at the time of select clause
 
 --finding more effecient 

select category , sum(price) 
from meesho
where category= 'clothing' --more effiecient as it filter the table first
group by category ;   --it is used as we also want the category name in output along with total sale

--- difference btw where and having 
select category , sum(price) 
from meesho
group by category
having category= 'clothing';--this is not good for these filter..having basically for the aggreate func 


select * from meesho;


