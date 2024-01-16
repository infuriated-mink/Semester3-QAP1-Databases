-- Create the database
CREATE DATABASE Hotel_Database;

-- Connect to the database
\c HOTEL_DB;

-- Create the Hotel table
CREATE TABLE Hotel (
    hotel_id SERIAL NOT NULL, 
    hotel_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    rating DECIMAL(2, 1),
    PRIMARY KEY (hotel_id)
);

-- Create the Room table
CREATE TABLE Room (
    room_id SERIAL NOT NULL,
    room_number INT NOT NULL,
    room_type VARCHAR(50),
    price DECIMAL(8, 2) NOT NULL,
    hotel_id INT REFERENCES Hotel(hotel_id) ON DELETE CASCADE,
    PRIMARY KEY (room_id)
);
