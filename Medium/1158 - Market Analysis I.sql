with temp as
(
    
 select user_id as buyer_id, join_date, order_date 
 from Users as u LEFT JOIN Orders as o on u.user_id=o.buyer_id and Year(order_date)='2019'
)

select buyer_id, join_date, count(order_date) as orders_in_2019
from temp
group by buyer_id
order by buyer_id
