select ISNULL(e.employee_id, s.employee_id) as employee_id
from Employees as e FULL JOIN Salaries as s on e.employee_id = s.employee_id
where name is null or salary is null
order by employee_id
