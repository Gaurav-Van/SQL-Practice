# Write your MySQL query statement below
with temp as
(
    select name, COALESCE(referee_id, 0) as ref_id 
    from Customer 
)

select name
from temp
where ref_id <> 2 
