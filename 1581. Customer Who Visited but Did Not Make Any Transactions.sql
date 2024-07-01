# Write your MySQL query statement below
Select V.customer_id,Count(customer_id) as count_no_trans
from Visits V left join Transactions T on V.visit_id = T.visit_id 
Where T.transaction_id is NULL
Group by V.customer_id
