
# Task 3: Writing Basic SELECT Queries – Hotel Reservation System

## 🎯 Objective
Extract data from one or more tables using SQL `SELECT` queries.

## 🛠️ Tools
- DB Browser for SQLite / MySQL Workbench

## 📦 Deliverables
- SQL script demonstrating usage of:
  - `SELECT`
  - `WHERE`
  - `ORDER BY`
  - `LIMIT`

---

## 🗂️ Database Used
**Database Name:** `HotelReservationSystem`

Includes the following tables:
- `Hotel`
- `Room`
- `Guest`
- `Reservation`
- `Payment`

---

## 📝 SQL Query Examples

### 1. View all hotel records
```sql
SELECT * FROM Hotel;
```

### 2. View hotel names and ratings
```sql
SELECT name, rating FROM Hotel;
```

### 3. Guest reservation details
```sql
SELECT 
    G.name AS GuestName,
    R.status,
    R.check_in_date,
    R.check_out_date
FROM Guest G
JOIN Reservation R ON G.guest_id = R.guest_id;
```

### 4. List available rooms
```sql
SELECT * FROM Room
WHERE availability = TRUE;
```

### 5. Rooms priced between 3000 and 5000
```sql
SELECT * FROM Room
WHERE price BETWEEN 3000 AND 5000;
```

### 6. Guests with missing contact info
```sql
SELECT * FROM Guest
WHERE email IS NULL OR phone IS NULL;
```

### 7. Payments made by Credit Card
```sql
SELECT * FROM Payment
WHERE payment_method = 'Credit Card';
```

### 8. Hotels ordered by rating
```sql
SELECT * FROM Hotel
ORDER BY rating DESC;
```

### 9. Top 2 recent payments
```sql
SELECT * FROM Payment
ORDER BY payment_date DESC
LIMIT 2;
```

### 10. Reservation details with hotel and room info
```sql
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
```

---

## ✅ Outcome
A clear understanding of how to retrieve and filter data using SQL `SELECT` queries from a hotel reservation database.

