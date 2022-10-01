with red as
(
    select com_id 
    from Company 
    where name = 'RED'
),
ord as
(
    select o.sales_id 
    from Orders as o, red as r
    where o.com_id = r.com_id 
)

select s.name 
from SalesPerson as s
where s.sales_id NOT IN (select sales_id from ord)
