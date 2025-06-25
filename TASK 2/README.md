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

-- Insert Hotels
INSERT INTO Hotel (name, location, rating) VALUES
('Grand Palace', 'Mumbai', 4.5),
('Sea Breeze', 'Goa', 4.0),
('Mountain View', 'Manali', NULL);

-- Insert Rooms
INSERT INTO Room (hotel_id, room_number, room_type, price, availability) VALUES
(1, '101', 'Deluxe', 3500.00, TRUE),
(1, '102', 'Standard', 2500.00, TRUE),
(2, '201', 'Suite', 5000.00, FALSE),
(3, '301', 'Deluxe', 4000.00, TRUE);

-- Insert Guests
INSERT INTO Guest (name, phone, email) VALUES
('Ananya Rao', '9876543210', 'ananya@example.com'),
('Rahul Mehta', NULL, 'rahul@example.com'),
('Sara Khan', '9123456789', NULL);

-- Insert Reservations
INSERT INTO Reservation (guest_id, room_id, check_in_date, check_out_date, status) VALUES
(1, 1, '2025-07-01', '2025-07-05', 'Confirmed'),
(2, 2, '2025-07-10', '2025-07-12', 'Pending'),
(3, 3, '2025-07-03', '2025-07-08', NULL);

-- Insert Payments
INSERT INTO Payment (reservation_id, amount, payment_date, payment_method) VALUES
(1, 14000.00, '2025-07-01', 'Credit Card'),
(2, 5000.00, '2025-07-10', NULL);

### 🔹 UPDATE Statement
sql
-- Update a NULL rating for Mountain View Hotel
UPDATE Hotel SET rating = 3.8 WHERE hotel_id=1; 

-- Update guest email for Sara Khan
UPDATE Guest SET email = 'sara.khan@example.com' WHERE guest_id=1;

-- Mark reservation status as Confirmed
UPDATE Reservation SET status = 'Confirmed' WHERE reservation_id = 3;



### 🔹 DELETE Statement
sql
-- Delete a reservation with status 'Pending'
DELETE FROM Reservation WHERE status = 'Pending' and reservation_id=123;

-- Delete a room that is not available
DELETE FROM Room WHERE availability = FALSE;


### 🔹 NULL Handling
- Missing values were added using NULL or by skipping optional columns in INSERT.
- Updated using UPDATE to correct or complete the data later.

---

## ✅ Outcome
A populated *Hotel Reservation System* database with consistent, clean data, and proper handling of NULL values during insertion and update operations.

---
