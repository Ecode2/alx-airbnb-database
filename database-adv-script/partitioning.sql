CREATE TABLE Bookings (
    id PRIMARY KEY UNIQUE NOT NULL,
    user_id INTEGER FOREIGN KEY REFERENCES User(id),
    property_id INTEGER FOREIGN KEY REFERENCES Properties(id),
    check_in_date DATE NOT NULL AS start_date,
    check_out_date DATE NOT NULL,
); PARTITION BY RANGE (start_date)


EXPLAIN ANALYZE SELECT * WHERE start_date >= '2023-01-01' AND start_date <= '2023-12-31'
FROM Bookings PARTITION (p2023_01, p2023_02);