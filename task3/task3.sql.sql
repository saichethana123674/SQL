-- 1. Select all data from Hotel table
SELECT * FROM Hotel;

-- 2. Select specific columns: name and rating of all hotels
SELECT name, rating FROM Hotel;

-- 3. Select all guests with their reservation status using JOIN
SELECT 
    G.name AS GuestName,
    R.status,
    R.check_in_date,
    R.check_out_date
FROM Guest G
JOIN Reservation R ON G.guest_id = R.guest_id;

-- 4. List all available rooms
SELECT * FROM Room
WHERE availability = TRUE;

-- 5. Select rooms priced between 3000 and 5000
SELECT * FROM Room
WHERE price BETWEEN 3000 AND 5000;

-- 6. Find guests who don’t have email or phone info
SELECT * FROM Guest
WHERE email IS NULL OR phone IS NULL;

-- 7. Find all payments made by 'Credit Card'
SELECT * FROM Payment
WHERE payment_method = 'Credit Card';

-- 8. List all hotels ordered by rating (highest first)
SELECT * FROM Hotel
ORDER BY rating DESC;

-- 9. Limit to 2 most recent payments
SELECT * FROM Payment
ORDER BY payment_date DESC
LIMIT 2;

-- 10. Get reservation details along with hotel name and room type
SELECT 
    R.reservation_id,
    G.name AS GuestName,
    H.name AS HotelName,
    Ro.room_type,
    R.check_in_date,
    R.status
FROM Reservation R
JOIN Guest G ON R.guest_id = G.guest_id
JOIN Room Ro ON R.room_id = Ro.room_id
JOIN Hotel H ON Ro.hotel_id = H.hotel_id;