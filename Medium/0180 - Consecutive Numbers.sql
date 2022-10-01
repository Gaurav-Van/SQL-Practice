with temp as
(
    select LAG(num) over(order by id) as prevnum,
    num, LEAD(num) over(order by id) as nextnum
    FROM Logs
)

select distinct(num) as ConsecutiveNums
FROM temp
where prevnum = num AND num = nextnum
