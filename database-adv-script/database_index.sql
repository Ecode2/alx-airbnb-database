CREATE INDEX idx_user
ON Users (email, full_name);

CREATE INDEX idx_bookings
ON Bookings (check_in_date, check_out_date);

CREATE INDEX idx_property
ON  Properties (title, location, price_per_night);


EXPLAIN ANALYZE SELECT * FROM User WHERE email != NULL AND full_name != NULL;

EXPLAIN ANALYZE SELECT * FROM Bookings WHERE check_in_date >= '2023-01-01' AND check_out_date <= '2023-12-31';

EXPLAIN ANALYZE SELECT * FROM Properties WHERE title LIKE '%beach%' AND location = 'California' AND price_per_night < 300;

