CREATE DATABASE nibbles;
USE nibbles;
-- Creating CUSTOMER table
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
    LAST_NAME VARCHAR(50) NOT NULL,
    FIRST_NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE,
    PHONE_NUMBER VARCHAR(15),
    ADDRESS VARCHAR(100)
);

-- Populating CUSTOMER table
INSERT INTO CUSTOMER (LAST_NAME, FIRST_NAME, EMAIL, PHONE_NUMBER, ADDRESS)
VALUES  
    ('Okafor', 'Chinedu', 'chinedu@gmail.com', '+2341234567890', '12 Lagos St, Lagos'),
    ('Adeyemi', 'Yetunde', 'yetunde@gmail.com', '+2349876543210', '45 Abuja Rd, Abuja'),
    ('Ogunwale', 'Olufemi', 'olufemi@ymail.com', '+2345555555555', '78 Ibadan St, Ibadan'),
    ('Adewale', 'Chinwe', 'chinwe@ymail.com', '+2341112223333', '34 Port Harcourt Rd, Port Harcourt'),
    ('Adegbite', 'Emeka', 'emeka@outlook.com', '+2344444444444', '56 Kano St, Kano'),
    ('Adegoke', 'Chidinma', 'chidinma@gmail.com', '+2347778889999', '67 Enugu Rd, Enugu'),
    ('Okonkwo', 'Obinna', 'obinna@outlook.com', '+2342223334444', '23 Calabar St, Calabar'),
    ('Nwachukwu', 'Adaugo', 'adaugo@gmail.com', '+2346667778888', '89 Jos St, Jos'),
    ('Okeke', 'Chukwudi', 'chukwudi@ymail.com', '+2348889990000', '56 Kaduna St, Kaduna'),
    ('Adebayo', 'Ayomide', 'ayomide@outlook.com', '+2341112223333', '78 Owerri St, Owerri');

SELECT * FROM CUSTOMER;

-- Creating PAYROLL table
CREATE TABLE PAYROLL (
    REFERENCE_ID INT AUTO_INCREMENT PRIMARY KEY,
    NI_NUMBER VARCHAR(15) NOT NULL,
    AMOUNT INT NOT NULL,
    PAY_DATE DATE NOT NULL
);

-- Populating PAYROLL table
INSERT INTO PAYROLL (NI_NUMBER, AMOUNT, PAY_DATE)
VALUES  ('NI123456', 1000, '2023-08-01'),
		('NI987654', 1500, '2023-08-02'),
		('NI555555', 1200, '2023-08-03'),
		('NI111222', 1800, '2023-08-04'),
		('NI444444', 2000, '2023-08-05'),
		('NI777888', 1700, '2023-08-06'),
		('NI222333', 1600, '2023-08-07'),
		('NI666777', 1400, '2023-08-08'),
		('NI888999', 1900, '2023-08-09'),
		('NI111222', 1300, '2023-08-10');

SELECT * FROM PAYROLL;

-- Creating VEHICLE table
CREATE TABLE VEHICLE (
    VEHICLE_REG_NUMBER VARCHAR(15) PRIMARY KEY,
    COLOUR VARCHAR(50),
    PURCHASE_DATE DATE,
    ENGINE_SIZE INT
);

-- Populating VEHICLE table
INSERT INTO VEHICLE (VEHICLE_REG_NUMBER, COLOUR, PURCHASE_DATE, ENGINE_SIZE)
VALUES  ('LGN123', 'Red', '2022-01-15', 1600),
		('EKO987', 'Blue', '2022-02-20', 1800),
		('ABJ555', 'Green', '2022-03-25', 2000),
		('PHC111', 'Black', '2022-04-30', 1400),
		('KAN444', 'White', '2022-05-05', 1700),
		('ENU777', 'Silver', '2022-06-10', 1500),
		('CAL222', 'Gray', '2022-07-15', 1900),
		('JOS666', 'Brown', '2022-08-20', 1700),
		('KAD888', 'Orange', '2022-09-25', 1800),
		('OWE111', 'Yellow', '2022-10-30', 1600);	

SELECT * FROM VEHICLE;

-- Creating PRODUCT table
CREATE TABLE PRODUCT (
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(50),
    PRODUCT_PRICE INT,
    PRODUCT_CATEGORY VARCHAR(15)
);

-- Populating PRODUCT table
INSERT INTO PRODUCT (PRODUCT_ID, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_CATEGORY)
VALUES  (1, 'Nkwobi', 10, 'Starter'),
		(2, 'Jollof Rice', 15, 'Main Course'),
		(3, 'Pounded Yam and Egusi Soup', 12, 'Main Course'),
		(4, 'Chin-Chin', 5, 'Dessert'),
		(5, 'Fried Plantain', 8, 'Starter'),
		(6, 'Suya', 7, 'Starter'),
		(7, 'Moi Moi', 6, 'Starter'),
		(8, 'Zobo Drink', 3, 'Drinks'),
		(9, 'Chapman', 4, 'Drinks'),
		(10, 'Akara', 5, 'Starter');

SELECT * FROM PRODUCT;

-- Creating MANAGER table
CREATE TABLE MANAGER (
    MANAGER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    NI_NUMBER VARCHAR(15)
);

-- Populating MANAGER table
INSERT INTO MANAGER (MANAGER_ID, FIRST_NAME, LAST_NAME, NI_NUMBER)
VALUES (1, 'Chukwudi', 'Okonkwo', 'NI123456'),
		(2, 'Amina', 'Abubakar', 'NI234567'),
		(3, 'Oluwatobi', 'Adewale', 'NI345678'),
		(4, 'Fatima', 'Mohammed', 'NI456789'),
		(5, 'Emeka', 'Nwachukwu', 'NI567890'),
		(6, 'Adaobi', 'Okafor', 'NI678901'),
		(7, 'Abdullahi', 'Yusuf', 'NI789012'),
		(8, 'Folake', 'Okeke', 'NI890123'),
		(9, 'Yakubu', 'Suleiman', 'NI901234'),
		(10, 'Nneka', 'Eze', 'NI012345');

SELECT * FROM MANAGER;

-- Creating DRIVERS table
CREATE TABLE DRIVERS (
    DRIVER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(50),
    PHONE_NUMBER VARCHAR(15),
    SALARY INT,
    NI_NUMBER VARCHAR(15),
    DRIVING_LICENSE_NUMBER VARCHAR(20),
    LICENSE_COUNTRY_OF_ISSUE VARCHAR(50),
    LICENSE_ISSUE_DATE DATE,
    LICENSE_EXPIRY_DATE DATE,
    MANAGER_ID INT,
    VEHICLE_REG_NUMBER VARCHAR(15),
    FOREIGN KEY (MANAGER_ID) REFERENCES MANAGER(MANAGER_ID) ON DELETE SET NULL,
    FOREIGN KEY (VEHICLE_REG_NUMBER) REFERENCES VEHICLE(VEHICLE_REG_NUMBER) ON DELETE SET NULL
);

-- Populating DRIVERS table
INSERT INTO DRIVERS (DRIVER_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, SALARY, NI_NUMBER, 
                     DRIVING_LICENSE_NUMBER, LICENSE_COUNTRY_OF_ISSUE, LICENSE_ISSUE_DATE, LICENSE_EXPIRY_DATE, 
                     MANAGER_ID, VEHICLE_REG_NUMBER)
VALUES (1, 'Ngozi', 'Eze', 'ngozi@gmail.com', '+2341234567890', 2000, 'NI001', 'DL123', 'Nigeria', '2022-01-01', '2025-01-01', 1, 'LGN123'),
    (2, 'Abubakar', 'Bello', 'abubakar@gmail.com', '+2349876543210', 1800, 'NI002', 'DL456', 'Nigeria', '2022-02-01', '2024-02-01', 2, 'EKO987'),
    (3, 'Chidinma', 'Okoro', 'chidinma@gmail.com', '+2345555555555', 1600, 'NI003', 'DL789', 'Nigeria', '2022-03-01', '2023-03-01', 3, 'ABJ555'),
    (4, 'Emeka', 'Okafor', 'emeka@gmail.com', '+2341112223333', 1900, 'NI004', 'DL101', 'Nigeria', '2022-04-01', '2025-04-01', 4, 'PHC111'),
    (5, 'Ifeoma', 'Adeleke', 'ifeoma@gmail.com', '+2344444444444', 2100, 'NI005', 'DL112', 'Nigeria', '2022-05-01', '2024-05-01', 5, 'KAN444'),
    (6, 'Mohammed', 'Aliyu', 'mohammed@gmail.com', '+2347778889999', 1700, 'NI006', 'DL131', 'Nigeria', '2022-06-01', '2023-06-01', 6, 'ENU777'),
    (7, 'Ezinne', 'Ugwu', 'ezinne@gmail.com', '+2342223334444', 1500, 'NI007', 'DL151', 'Nigeria', '2022-07-01', '2025-07-01', 7, 'CAL222'),
    (8, 'Ayomide', 'Oladipo', 'ayomide@gmail.com', '+2346667778888', 1800, 'NI008', 'DL171', 'Nigeria', '2022-08-01', '2024-08-01', 8, 'JOS666'),
    (9, 'Chika', 'Okeke', 'chika@gmail.com', '+2348889990000', 2100, 'NI009', 'DL192', 'Nigeria', '2022-09-01', '2023-09-01', 9, 'KAD888'),
    (10, 'Adebayo', 'Adewale', 'adebayo@gmail.com', '+2341112223333', 1900, 'NI010', 'DL202', 'Nigeria', '2022-10-01', '2025-10-01', 10, 'OWE111');

SELECT * FROM DRIVERS;

-- Creating ORDERS table (AFTER PRODUCT, CUSTOMER, and DRIVERS)
CREATE TABLE ORDERS (
    ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
    ORDER_DATE DATE,
    PRODUCT_ID INT,
    CUSTOMER_ID INT,
    DRIVER_ID INT,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID) ON DELETE SET NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON DELETE CASCADE,
    FOREIGN KEY (DRIVER_ID) REFERENCES DRIVERS(DRIVER_ID) ON DELETE SET NULL
);

-- Populating ORDERS table
INSERT INTO ORDERS (ORDER_DATE, PRODUCT_ID, CUSTOMER_ID, DRIVER_ID)
VALUES ('2023-08-01', 1, 10, 1),
    ('2023-08-02', 2, 1, 2),
    ('2023-08-03', 10, 3, 3),
    ('2023-08-04', 6, 9, 4),
    ('2023-08-05', 7, 6, 5),
    ('2023-08-06', 2, 5, 6),
    ('2023-08-07', 5, 8, 7),
    ('2023-08-08', 8, 7, 8),
    ('2023-08-09', 4, 4, 9),
    ('2023-08-10', 3, 2, 10);

SELECT * FROM ORDERS;

-- Creating RESTAURANT table
CREATE TABLE RESTAURANT (
    RESTAURANT_ID INT PRIMARY KEY,
    RESTAURANT_NAME VARCHAR(50),
    RESTAURANT_ADDRESS VARCHAR(50),
    PRODUCT_ID INT,
    DRIVER_ID INT,
    MANAGER_ID INT,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID) ON DELETE SET NULL,
    FOREIGN KEY (DRIVER_ID) REFERENCES DRIVERS(DRIVER_ID) ON DELETE CASCADE,
    FOREIGN KEY (MANAGER_ID) REFERENCES MANAGER(MANAGER_ID) ON DELETE SET NULL
);

-- Populating RESTAURANT table
INSERT INTO RESTAURANT (RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_ADDRESS, PRODUCT_ID, DRIVER_ID, MANAGER_ID)
VALUES (1, 'ARTHUR-NIBBLES IKEJA', '2 CHARLES RD. IKEJA', 1, 2, 3),
		(2, 'ARTHUR-NIBBLES AWKA', '4 KOSI RD. AWKKA', 2, 3, 4) ,
		(3, 'ARTHUR-NIBBLES ENUGU', '5 FLOWER RD. ENUGU', 5, 6, 7),
		(4, 'ARTHUR-NIBBLES ONITSHA', '2 MERCEDES RD. IKEJA', 8, 9, 10),
		(5, 'ARTHUR-NIBBLES LAFIA', '2 ALIYU RD. LAFIA', 10, 9, 8),
		(6, 'ARTHUR-NIBBLES ASABA', '2 ITOHA RD. ASABA', 7, 6, 5),
		(7, 'ARTHUR-NIBBLES NIGER', '4 FATAI RD. NIGER', 4, 3, 2),
		(8, 'ARTHUR-NIBBLES UMUAHIA', '8 ODOGWU RD. UMUAHAIA', 1, 2, 4),
		(9, 'ARTHUR-NIBBLES ABIA', '45 NIKE RD. ABIA', 6, 8, 10),
		(10, 'ARTHUR-NIBBLES KOGI', '43 LAMIDO RD. KOGI', 5, 7, 9)
;

SELECT * FROM RESTAURANT;
