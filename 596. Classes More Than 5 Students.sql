# Write your MySQL query statement below
Select class
from Courses 
group by class
having Count(class) >= 5
