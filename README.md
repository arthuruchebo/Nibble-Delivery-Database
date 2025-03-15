# Nibble-Delivery-Database
This repository contains the relational database design and SQL implementation for the Nibble online delivery company. The database supports **customers, orders, products, drivers, payroll, and restaurant management**.  

## Entity-Relationship Diagram (ERD)  
The database is designed using **Crow’s Foot Notation** to define relationships, participation constraints, and cardinalities. 

![nibble_entity_relationship_diagram](https://github.com/user-attachments/assets/30c3477f-8b11-4a83-8510-887fae11089c)

## Database Overview
The Nibble Delivery Database consists of the following tables:
![image](https://github.com/user-attachments/assets/957783be-4537-46fe-ba76-46d90799d1bc)

- CUSTOMER:	Stores customer details (name, email, phone, address)
- PRODUCT:	Stores food items and drinks available for order
- ORDERS:	Tracks customer orders and assigned drivers
- DRIVERS:	Stores driver details, vehicle information, and assigned manager
- VEHICLE:	Stores details of delivery vehicles
- MANAGER:	Stores managers assigned to oversee drivers
- PAYROLL:	Stores salary and payment information of employees
- RESTAURANT:	Stores restaurant locations offering Kangaroo services

## Technologies Used
- MySQL – Database Management System
- Draw.io – ERD Design

