select sell_date, count(distinct product) as num_sold, GROUP_CONCAT(Distinct product 
                                                           order by product) as products
from Activities
group by sell_date
