
# Task 7: Creating Views in SQL

## 🎯 Objective
Learn to create and use SQL Views to:
- Simplify complex queries
- Abstract sensitive data
- Reuse SQL logic efficiently

## 🧰 Tools
- DB Browser for SQLite
- MySQL Workbench

## 📦 Deliverables
- SQL view definitions
- Usage examples

---

## 📘 Views Created

### 1. `ReservationDetails`
Combines Guest, Room, Hotel, and Reservation data into a comprehensive view.

```sql
SELECT * FROM ReservationDetails;
```

### 2. `ConfirmedReservations`
Filters only active (confirmed) reservations for abstraction/security.

```sql
SELECT * FROM ConfirmedReservations;
```

### 3. `PaymentSummary`
Displays payments with guest name, amount, and method (if available).

```sql
SELECT * FROM PaymentSummary;
```

### 4. `AvailableRooms`
Lists only available rooms with hotel name and pricing.

```sql
SELECT * FROM AvailableRooms;
```

---

## 🧠 Outcome
Understand and apply reusable SQL logic using `CREATE VIEW`, and use views for simplified reporting and data access control.

> ✅ Tip: Views can be queried like tables and are useful in reporting, dashboards, and securing sensitive columns.
