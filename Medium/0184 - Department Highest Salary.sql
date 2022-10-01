with temp as
(
    select d.name as Department, e.name as Employee, e.salary as Salary,
    DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) as dr
    FROM Employee as e INNER JOIN Department as d ON e.departmentId = d.id
)

select Department, Employee, Salary
from temp
where dr = 1
