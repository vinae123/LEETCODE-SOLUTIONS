# Write your MySQL query statement below
Select B.product_name,A.year,A.price
from Sales A left join Product B on A.product_id = B.product_id
