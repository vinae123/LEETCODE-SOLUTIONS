# Write your MySQL query statement below
Select contest_id,round(Count(distinct U.user_id)/(Select Count(*) from Users) * 100,2) as percentage from 
Users U left join Register R 
on U.user_id = R.user_id
where contest_id is not NULL
group by contest_id
order by percentage Desc ,contest_id ASC
