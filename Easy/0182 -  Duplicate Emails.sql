# Write your MySQL query statement below
WITH Temp AS
(
    SELECT email as Email, COUNT(id) as Cnt 
    FROM Person
    GROUP BY email
    HAVING Cnt>1
)

SELECT Email
FROM Temp
