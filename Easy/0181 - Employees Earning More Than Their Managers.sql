select e1.name as Employee
from Employee as e1 INNER JOIN Employee as e2 on e1.managerId = e2.id
WHERE e1.salary > e2.salary
