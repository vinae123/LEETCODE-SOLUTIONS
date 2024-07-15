# Write your MySQL query statement below
with cte as(
Select requester_id
from RequestAccepted

union all

Select accepter_id
from RequestAccepted
)

Select requester_id as id,Count(requester_id) as num
from cte 
group by requester_id
order by num Desc limit 1
