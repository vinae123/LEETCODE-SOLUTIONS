# Write your MySQL query statement 
with rating as 
(
Select Movies.title
from MovieRating left join Movies 
on MovieRating.movie_id = Movies.movie_id
where Month(created_at) = 2 and Year(created_at) = 2020
group by Movies.title
order by Avg(MovieRating.rating) Desc,Movies.title Asc limit 1
),
movie as 
(
    Select u.name as results
    from 
    MovieRating mr left join Users u 
    on u.user_id = mr.user_id
    group by mr.user_id
    order by Count(mr.user_id) Desc,u.name limit 1  
)

select *  from movie
union all
Select * from rating 
