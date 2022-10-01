with temp as
(
    select id, visit_date, people, 
    lead(people) over(order by id) as next1,
    lead(people, 2) over(order by id) as next2,
    lag(people) over(order by id) as prev1,
    lag(people, 2) over(order by id) as prev2
    FROM Stadium
)

select id, visit_date, people
from temp
where (people >= 100 and next1 >= 100 and next2 >= 100) or 
(people >= 100 and prev1 >= 100 and prev2 >= 100) or
(people >= 100 and prev1 >= 100 and next1 >= 100)
order by visit_date
