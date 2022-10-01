with temp as
(
    select id, Jan as Jan_Revenue,Feb as Feb_Revenue,Mar as Mar_Revenue,Apr as                   Apr_Revenue,May as May_Revenue,Jun as Jun_Revenue,Jul as Jul_Revenue,Aug as Aug_Revenue,     Sep as Sep_Revenue,Oct as Oct_Revenue,Nov as Nov_Revenue,Dec as Dec_Revenue
    from Department
    PIVOT
    (
        sum(revenue)
        FOR month in 
        (
            [Jan],[Feb],[Mar],[Apr],
            [May],[Jun],[Jul],[Aug],
            [Sep],[Oct],[Nov],[Dec]
        )
    ) As pivot_table
)

select id, Jan_Revenue,Feb_Revenue, Mar_Revenue, Apr_Revenue, May_Revenue, Jun_Revenue, Jul_Revenue, Aug_Revenue, Sep_Revenue, Oct_Revenue,Nov_Revenue,Dec_Revenue
from temp
