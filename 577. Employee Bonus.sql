# Write your MySQL query statement below
Select E.name,B.bonus 
from Employee E left join Bonus B on E.empId = B.empID
where B.bonus < 1000 or B.bonus is NULL
