# Write your MySQL query statement below
Select x,y,z,
(Case when x+y > z and x+z>y and y+z>x then 'Yes' Else 'No' END)
as triangle
from Triangle
