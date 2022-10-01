WITH sal_rank AS
(
    select d.name AS Department, e.name as Employee, e.salary as Salary,
    DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) as dr
    FROM Employee as e INNER JOIN Department as d ON e.departmentId = d.id
)

SELECT Department, Employee, Salary
FROM sal_rank
WHERE dr <= 3
