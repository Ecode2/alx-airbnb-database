SELECT * FROM Bookings
FULL JOIN Properties ON Bookings.property_id = Properties.id
FULL JOIN Users ON Bookings.user_id = Users.id
FULL JOIN Payments ON Payments.booking_id = Bookings.id


EXPLAIN ANALYZE SELECT * FROM Bookings
FULL JOIN Properties ON Bookings.property_id = Properties.id
FULL JOIN Users ON Bookings.user_id = Users.id
FULL JOIN Payments ON Payments.booking_id = Bookings.id


CREATE INDEX idx_user
ON Users (email, full_name);

CREATE INDEX idx_bookings
ON Bookings (check_in_date, check_out_date);

CREATE INDEX idx_property
ON Properties (title, location, price_per_night);