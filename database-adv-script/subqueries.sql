SELECT * FROM Properties 
WHERE property_id IN (
	SELECT property_id FROM Reviews 
	GROUP BY property_id 
	HAVING AVG(rating) > 4.0
);


SELECT * FROM Users
WHERE user_id IN (
	SELECT user_id FROM Bookings
	GROUP BY user_id
	HAVING COUNT(*) > 3
)