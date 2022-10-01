WITH TEMP AS
(
    SELECT u.name as name, COALESCE(r.distance, 0) as dist, COALESCE(r.user_id, 0) as id
    FROM Users as u LEFT JOIN Rides as r ON u.id = r.user_id
),

TEMP1 AS
(
    SELECT id, name,SUM(dist) as travelled_distance
    FROM TEMP
    GROUP BY id, name
    ORDER BY travelled_distance DESC, name
)

SELECT name, travelled_distance
FROM TEMP1
