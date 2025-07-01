-- A. Scalar Subquery in SELECT
-- Show each room with its price and the average price of all rooms
SELECT 
    room_id,
    room_type,
    price,
    (SELECT AVG(price) FROM Room) AS avg_price
FROM Room;

-- B. Subquery in WHERE using IN
-- Find guests who booked rooms in 'Grand Palace'
SELECT name 
FROM Guest
WHERE guest_id IN (
    SELECT r.guest_id
    FROM Reservation r
    JOIN Room rm ON r.room_id = rm.room_id
    JOIN Hotel h ON rm.hotel_id = h.hotel_id
    WHERE h.name = 'Grand Palace'
);

-- C. Subquery in FROM (Derived Table)
-- Show average room price per hotel
SELECT h.name AS hotel_name, avg_room.avg_price
FROM (
    SELECT hotel_id, AVG(price) AS avg_price
    FROM Room
    GROUP BY hotel_id
) AS avg_room
JOIN Hotel h ON avg_room.hotel_id = h.hotel_id;

-- D. Correlated Subquery in WHERE
-- Show rooms that are priced above the average price in their own hotel
SELECT room_id, hotel_id, price
FROM Room r1
WHERE price > (
    SELECT AVG(price)
    FROM Room r2
    WHERE r2.hotel_id = r1.hotel_id
);

-- E. Subquery with EXISTS
-- List guests who have made at least one reservation
SELECT name
FROM Guest g
WHERE EXISTS (
    SELECT 1
    FROM Reservation r
    WHERE r.guest_id = g.guest_id
);