# Write your MySQL query statement below
WITH TEMP AS
(
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)

SELECT player_id, first_login
FROM Temp
