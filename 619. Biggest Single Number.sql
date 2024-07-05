# Write your MySQL query statement below
Select MAX(NUM) as num
from (Select num
    from MyNumbers
    group by num
    having Count(num) = 1) 
As unique_num
