# Write your MySQL query s
Select teacher_id,count(distinct subject_id) as cnt 
from Teacher
group by teacher_id
