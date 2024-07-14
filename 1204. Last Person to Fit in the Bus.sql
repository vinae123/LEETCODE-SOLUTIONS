# Write your MySQL query statement below
With cte as 
(
    Select 1 as ID,person_name,weight,turn
    from Queue
    order by turn
),

c as (
Select person_name,sum(weight) over 
(
    partition by ID order by turn
) as su
from cte
)

Select person_name
from c
where su <= 1000
order by su Desc limit 1
