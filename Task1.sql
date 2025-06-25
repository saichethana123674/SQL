create database  HOTELRESERVATIONSYSTEM2
USE HOTELRESERVATIONSYSTEM2
-- 1. Hotel Table
CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    location VARCHAR(100),
    rating DECIMAL(2,1)
);

-- 2. Room Table
CREATE TABLE Room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT,
    room_number VARCHAR(10),
    room_type VARCHAR(50),
    price DECIMAL(10,2),
    availability BOOLEAN,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

-- 3. Guest Table
CREATE TABLE Guest (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- 4. Reservation Table
CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (guest_id) REFERENCES Guest(guest_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

-- 5. Payment Table
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    reservation_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);