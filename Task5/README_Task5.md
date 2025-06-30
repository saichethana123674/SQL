# Task 5: SQL Joins (Inner, Left, Right, Full)

## ✅ Objective
Demonstrate the use of INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN using relational tables.

---

## 🛠 Tools Required
- MySQL Workbench *(recommended)*
- Any SQL-compatible DBMS (RIGHT JOIN & FULL JOIN may vary)

---

## 📂 Tables Used

### Customers
| Column       | Type         |
|--------------|--------------|
| customer_id  | INT (PK)     |
| name         | VARCHAR(100) |
| city         | VARCHAR(100) |

### Orders
| Column       | Type         |
|--------------|--------------|
| order_id     | INT (PK)     |
| customer_id  | INT (FK)     |
| product      | VARCHAR(100) |

---

## 💾 Sample Data

### Customers
```sql
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston');
```

### Orders
```sql
INSERT INTO Orders (order_id, customer_id, product) VALUES
(101, 1, 'Laptop'),
(102, 2, 'Smartphone'),
(103, 1, 'Tablet'),
(104, 5, 'Camera');  -- No matching customer
```

---

## 🔄 JOIN Queries

### 🔹 INNER JOIN
Returns only matching rows from both tables.
```sql
SELECT Customers.name, Orders.product
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

### 🔹 LEFT JOIN
Returns all customers and matching orders (if any).
```sql
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

### 🔹 RIGHT JOIN *(MySQL only)*
Returns all orders, including those without matching customers.
```sql
SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

### 🔹 FULL OUTER JOIN *(Using UNION in MySQL)*
Includes all customers and orders.
```sql
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

---

## 🎯 Learning Outcome
- Understand SQL JOIN types
- Practice combining data from two tables
- Learn how to handle unmatched records

---

## 📌 Notes
- RIGHT and FULL JOIN are not available in SQLite.
- For best results, use MySQL or PostgreSQL.
