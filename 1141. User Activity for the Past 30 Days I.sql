# Write your MySQL query statement below
Select activity_date as day,count(distinct user_id) as active_users
from Activity
where activity_date between Date_sub('2019-07-28',interval 30 day) and '2019-07-28'
group by activity_date
