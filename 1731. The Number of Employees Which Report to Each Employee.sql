# Write your MySQL query statement below
Select E1.employee_id,E1.name,Count(E1.employee_id) as reports_count,round(Avg(E2.age)) as average_age
from Employees E1 left join Employees E2
on E1.employee_id = E2.reports_to
where E1.employee_id = E2.reports_to
group by E1.employee_id
order by E1.employee_id
