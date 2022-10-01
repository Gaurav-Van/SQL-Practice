with temp as
(
    select stock_name, sum(price) as buy
    from Stocks
    where operation = 'Buy'
    group by stock_name
),
temp2 as
(
    select stock_name, sum(price) as sell
    from Stocks
    where operation = 'Sell'
    group by stock_name
)

select t1.stock_name, sell-buy as capital_gain_loss
from temp as t1, temp2 as t2
where t1.stock_name = t2.stock_name
