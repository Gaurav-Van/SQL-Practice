# Write your MySQL query statement below
WITH temp as
(
    SELECT c.name as Customers, COALESCE(o.customerId, 0) as Id
    FROM Customers as c LEFT JOIN Orders as o ON c.id = o.customerId
)
SELECT Customers
FROM temp
WHERE Id = 0
