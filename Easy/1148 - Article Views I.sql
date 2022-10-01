WITH Temp AS
(
    SELECT DISTINCT author_id as id
    FROM Views 
    WHERE author_id = viewer_id
    ORDER BY author_id
)

SELECT id
FROM Temp
