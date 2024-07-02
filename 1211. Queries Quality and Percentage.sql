# Write your MySQL query statement below
Select S.query_name,round(sum(rating/position)/Count(query_name),2) as quality ,ifnull(round((Select Count(rating) from Queries where rating < 3 and query_name = S.query_name  group by query_name)/count(query_name)*100,2),0) as poor_query_percentage
from Queries S
Where query_name is not null
group by query_name
