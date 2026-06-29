Create database ola_project_dataset;

CREATE TABLE bookings (
    booking_date DATE,
    booking_time TIME,
    booking_id VARCHAR(20) PRIMARY KEY,
    booking_status VARCHAR(50),
    customer_id VARCHAR(20),
    vehicle_type VARCHAR(30),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    v_tat INT,
    c_tat INT,
    canceled_rides_by_customer VARCHAR(255),
    canceled_rides_by_driver VARCHAR(255),
    incomplete_rides VARCHAR(5),
    incomplete_rides_reason VARCHAR(255),
    booking_value INT,
    payment_method VARCHAR(30),
    ride_distance INT,
    driver_ratings DECIMAL(2,1),
    customer_rating DECIMAL(2,1)
);

LOAD DATA LOCAL INFILE 'C:/Users/waqar_byvdz1e/Documents/Iktedars Projects Data/OLA Ride Hailing/OLA-Bookings.csv'
INTO TABLE bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SHOW WARNINGS;
