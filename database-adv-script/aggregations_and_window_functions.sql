SELECT user_id, COUNT(*) AS total_bookings FROM Bookings
GROUP BY user_id


WITH PropertyCounts AS (
    SELECT p.id,
        p.*,
        COUNT(b.id) AS booking_count
    FROM Properties p
    LEFT JOIN Bookings b ON b.property_id = p.id
    GROUP BY p.id
)
SELECT *,
    RANK() OVER (ORDER BY booking_count DESC) AS prop_rank
FROM PropertyCounts;

SELECT *,
	ROW_NUMBER() OVER (ORDER BY booking_count DESC) AS prop_rank_no
FROM PropertyCounts

"ROW_NUMBER()"