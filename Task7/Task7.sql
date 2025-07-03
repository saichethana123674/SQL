

-- reservations with guest and hotel details

CREATE VIEW ReservationDetails AS
SELECT 
    r.reservation_id,
    g.name AS guest_name,
    g.email AS guest_email,
    h.name AS hotel_name,
    rm.room_number,
    rm.room_type,
    r.check_in_date,
    r.check_out_date,
    r.status
FROM Reservation r
JOIN Guest g ON r.guest_id = g.guest_id
JOIN Room rm ON r.room_id = rm.room_id
JOIN Hotel h ON rm.hotel_id = h.hotel_id;




-- confirmed reservations only

CREATE VIEW ConfirmedReservations AS
SELECT *
FROM ReservationDetails
WHERE status = 'Confirmed';




-- payment status with guest and amount details

CREATE VIEW PaymentSummary AS
SELECT 
    g.name AS guest_name,
    p.amount,
    p.payment_method,
    p.payment_date
FROM Payment p
JOIN Reservation r ON p.reservation_id = r.reservation_id
JOIN Guest g ON r.guest_id = g.guest_id;



-- 4 Available rooms with hotel name and price


CREATE VIEW AvailableRooms AS
SELECT 
    h.name AS hotel_name,
    r.room_number,
    r.room_type,
    r.price
FROM Room r
JOIN Hotel h ON r.hotel_id = h.hotel_id
WHERE r.availability = TRUE;

