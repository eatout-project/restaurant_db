CREATE DATABASE IF NOT EXISTS db;
GRANT ALL PRIVILEGES on db.*
TO 'root'@'%'
WITH GRANT OPTION;

USE db;

CREATE TABLE IF NOT EXISTS restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurantName varchar(50) not null,
    description varchar(200)
);

CREATE TABLE IF NOT EXISTS restaurantAddresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurantId int not null,
    streetName varchar(50) not null,
    houseNumber int not null,
    floor int,
    zipCode int not null,
    city varchar(50) not null
);
