
# 📊 Task 4: Aggregate Functions and Grouping

## ✅ Objective:
Use aggregate functions and grouping to summarize and analyze hotel reservation system data.

## 🛠 Tools Used:
- **DB Browser for SQLite**
- **MySQL Workbench**

## 📦 Deliverables:
SQL queries that use:
- `SUM`
- `COUNT`
- `AVG`
- `GROUP BY`
- `HAVING` (optional)

---

## 📘 SQL Queries:

### 1. 🔢 Total Payment Collected by Each Payment Method
```sql
SELECT payment_method, SUM(amount) AS total_collected
FROM Payment
WHERE amount IS NOT NULL
GROUP BY payment_method;
```

### 2. 🏷 Count of Rooms by Room Type
```sql
SELECT room_type, COUNT(*) AS total_rooms
FROM Room
GROUP BY room_type;
```

### 3. 💰 Average Room Price by Hotel
```sql
SELECT H.name AS hotel_name, AVG(R.price) AS avg_price
FROM Room R
JOIN Hotel H ON R.hotel_id = H.hotel_id
GROUP BY H.name;
```

### 4. 📆 Number of Reservations per Room
```sql
SELECT room_id, COUNT(*) AS reservation_count
FROM Reservation
GROUP BY room_id;
```

### 5. 🌟 Hotels with Average Rating Above 4
```sql
SELECT location, AVG(rating) AS avg_rating
FROM Hotel
WHERE rating IS NOT NULL
GROUP BY location
HAVING AVG(rating) > 4;
```

### 6. 👤 Total Amount Paid per Guest
```sql
SELECT G.name, SUM(P.amount) AS total_paid
FROM Guest G
JOIN Reservation R ON G.guest_id = R.guest_id
JOIN Payment P ON R.reservation_id = P.reservation_id
WHERE P.amount IS NOT NULL
GROUP BY G.name;
```

### 7. 🛏 Available Rooms Count per Hotel
```sql
SELECT H.name AS hotel_name, COUNT(*) AS available_rooms
FROM Room R
JOIN Hotel H ON R.hotel_id = H.hotel_id
WHERE R.availability = TRUE
GROUP BY H.name;
```

---

## 🎯 Outcome:
These queries allow you to:
- Summarize financial and occupancy data
- Analyze trends across hotels and room types
- Filter and group results effectively
