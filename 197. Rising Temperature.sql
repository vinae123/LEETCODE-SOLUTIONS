# Write your MySQL query statement below
Select W1.id as ID 
from Weather W1,Weather W2
where DATEDIFF(W1.recordDate,W2.recordDate) = 1 and W1.temperature > W2.temperature
