-- 1. 🔢 Total Payment Collected by Each Payment Method
SELECT payment_method, SUM(amount) AS total_collected
FROM Payment
WHERE amount IS NOT NULL
GROUP BY payment_method;

-- 2. 🏷 Count of Rooms by Room Type
SELECT room_type, COUNT(*) AS total_rooms
FROM Room
GROUP BY room_type;

-- 3. 💰 Average Room Price by Hotel
SELECT H.name AS hotel_name, AVG(R.price) AS avg_price
FROM Room R
JOIN Hotel H ON R.hotel_id = H.hotel_id
GROUP BY H.name;

-- 4. 📆 Number of Reservations per Room
SELECT room_id, COUNT(*) AS reservation_count
FROM Reservation
GROUP BY room_id;

-- 5. 🌟 Hotels with Average Rating Above 4
SELECT location, AVG(rating) AS avg_rating
FROM Hotel
WHERE rating IS NOT NULL
GROUP BY location
HAVING AVG(rating) > 4;

-- 6. 👤 Total Amount Paid per Guest
SELECT G.name, SUM(P.amount) AS total_paid
FROM Guest G