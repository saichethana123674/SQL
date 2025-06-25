# 📊 Task 2: Data Insertion and Handling NULLs - Hotel Reservation System

## 📌 Objective
Practice inserting, updating, and deleting data in the Hotel Reservation System database while handling NULL values appropriately.

## 🛠 Tools Used
- MySQL Workbench 

## 📂 Affected Tables
- Hotels
- Room
- Guest
- Reservation
- Payment

## 🧪 SQL Operations

### 🔹 INSERT Statements
sql
INSERT INTO Hotel (name, location, rating)
VALUES 
('Sunrise Inn', 'Mumbai', 4.5),
('Ocean View', 'Goa', 4.2),
('Hilltop Resort', 'Manali', NULL);  -- Missing rating handled as NULL

-- Inserting Rooms
INSERT INTO Room (hotel_id, room_number, room_type, price, availability)
VALUES
(1, '101', 'Deluxe', 3000.00, TRUE),
(1, '102', 'Standard', 2000.00, FALSE),
(2, '201', 'Suite', 5000.00, NULL),   -- availability unknown
(3, '301', 'Standard', 2500.00, TRUE);

-- Inserting Guests
INSERT INTO Guest (name, phone, email)
VALUES
('Raj Mehta', '9876543210', 'rajmehta@example.com'),
('Anjali Rao', '9123456780', NULL);  -- Missing email

-- Inserting Reservations
INSERT INTO Reservation (guest_id, room_id, check_in_date, check_out_date, status)
VALUES
(1, 1, '2025-07-01', '2025-07-05', 'Confirmed'),
(2, 3, '2025-07-10', '2025-07-12', 'Pending');

-- Inserting Payments
INSERT INTO Payment (reservation_id, amount, payment_date, payment_method)
VALUES
(1, 12000.00, '2025-06-25', 'Credit Card'),
(2, NULL, NULL, NULL); -- Payment pending, missing data




### 🔹 UPDATE Statement
sql
-- Update: Mark reservation as 'Cancelled'
UPDATE Reservation
SET status = 'Cancelled'
WHERE reservation_id = 2;

-- Update: Set room availability
UPDATE Room
SET availability = TRUE
WHERE availability IS NULL;



### 🔹 DELETE Statement
sql
-- Delete a reservation with status 'Pending'
DELETE FROM Reservation WHERE status = 'Pending';

-- Delete a room that is not available
DELETE FROM Room WHERE availability = FALSE;


### 🔹 NULL Handling
- Missing values were added using NULL or by skipping optional columns in INSERT.
- Updated using UPDATE to correct or complete the data later.

---

## ✅ Outcome
A populated *Hotel Reservation System* database with consistent, clean data, and proper handling of NULL values during insertion and update operations.

---
