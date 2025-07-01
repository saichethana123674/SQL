# 🏨 Hotel Reservation System — SQL Subquery Examples

This project demonstrates various types of **SQL subqueries** using a Hotel Reservation System. It includes examples of:

- Scalar Subqueries
- Subqueries in `WHERE` clause
- Subqueries in `FROM` clause (Derived Tables)
- Correlated Subqueries
- Subqueries with `EXISTS`

---

## 📁 Database Schema (Tables Used)

- `Hotel(hotel_id, name, location, rating)`
- `Room(room_id, hotel_id, room_number, room_type, price, availability)`
- `Guest(guest_id, name, contact_info)`
- `Reservation(reservation_id, room_id, guest_id, check_in_date, check_out_date)`

---

## 🔍 SQL Subquery Examples

### A. Scalar Subquery in SELECT

Shows each room with its price and the **average price of all rooms**.

```sql
SELECT 
    room_id,
    room_type,
    price,
    (SELECT AVG(price) FROM Room) AS avg_price
FROM Room;
```

---

### B. Subquery in WHERE using IN

Finds guests who booked rooms in the hotel named **'Grand Palace'**.

```sql
SELECT name 
FROM Guest
WHERE guest_id IN (
    SELECT r.guest_id
    FROM Reservation r
    JOIN Room rm ON r.room_id = rm.room_id
    JOIN Hotel h ON rm.hotel_id = h.hotel_id
    WHERE h.name = 'Grand Palace'
);
```

---

### C. Subquery in FROM (Derived Table)

Shows the **average room price per hotel**.

```sql
SELECT h.name AS hotel_name, avg_room.avg_price
FROM (
    SELECT hotel_id, AVG(price) AS avg_price
    FROM Room
    GROUP BY hotel_id
) AS avg_room
JOIN Hotel h ON avg_room.hotel_id = h.hotel_id;
```

---

### D. Correlated Subquery in WHERE

Lists rooms priced **above the average price** of rooms in the **same hotel**.

```sql
SELECT room_id, hotel_id, price
FROM Room r1
WHERE price > (
    SELECT AVG(price)
    FROM Room r2
    WHERE r2.hotel_id = r1.hotel_id
);
```

---

### E. Subquery with EXISTS

Lists guests who have made **at least one reservation**.

```sql
SELECT name
FROM Guest g
WHERE EXISTS (
    SELECT 1
    FROM Reservation r
    WHERE r.guest_id = g.guest_id
);
```

---

## 📌 Notes

- Ensure the database is properly populated before executing the queries.
- Indexes on `guest_id`, `room_id`, and `hotel_id` are recommended for better performance.

---

## 📚 Purpose

These queries serve as educational examples to understand how **SQL subqueries** work in different contexts within a relational hotel booking database.