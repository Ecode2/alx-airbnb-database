EXPLAIN SELECT * FROM User WHERE email != NULL AND full_name != NULL;

EXPLAIN SELECT * FROM Bookings WHERE check_in_date >= '2023-01-01' AND check_out_date <= '2023-12-31';
EXPLAIN SELECT * FROM Properties WHERE title LIKE '%beach%' AND location = 'California' AND price_per_night < 300;

ANALYZE