CREATE INDEX idx_user
ON Users (email, full_name);

CREATE INDEX idx_bookings
ON Bookings (check_in_date, check_out_date);

CREATE INDEX idx_property
ON  Properties (title, location, price_per_night);

