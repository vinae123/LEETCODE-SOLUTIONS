# Write your MySQL query statement below
Select B.unique_id,A.name from Employees A left join EmployeeUNI B on A.id = B.id
