# Write your MySQL query statement below
With cte as 
(Select Distinct(p.product_name),Sum(O.unit) over (Partition by p.product_name) as unit
from Products p left join Orders O 
on p.product_id = O.product_id
Where month(O.order_date) = 2 and year(O.order_date) = 2020
)

Select * from cte
where unit >= 100
