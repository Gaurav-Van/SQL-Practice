# Write your MySQL query statement below
with temp as
(
    select customer_number, count(order_number) as od
    from Orders
    Group by customer_number
)

select customer_number
from temp
where od = (select MAX(od) from temp)
