# Write your MySQL query statement below
Select P.product_id,ifnull(round(sum(P.price * U.units)/sum(U.units),2),0) as average_price from Prices P left join UnitsSold U 
on P.product_id = U.product_id
where (U.purchase_date between P.start_date and P.end_date) or U.purchase_date is NULL
group by P.product_id
