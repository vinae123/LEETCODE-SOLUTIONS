# Write your MySQL query statement below
Select product_id,year as first_year,quantity,price
from Sales 
where (product_id,year) in (Select product_id,Min(year) from Sales group by product_id) 
