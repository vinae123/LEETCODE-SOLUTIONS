# Write your MySQL query statement below
Select E1.name from Employee E1 Left join Employee E2 
on E1.id = E2.managerId
where E1.id = E2.managerId
group by E2.managerId
having Count(E2.managerId) >= 5
