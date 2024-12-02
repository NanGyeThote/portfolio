# Air Ticket Reservation System (Java EE JSP) for Myanmar

This is a **Java EE-based Air Ticket Reservation System** designed for **Myanmar**. The system provides a web-based interface for booking flights, checking available flights, and managing reservations. It is built using **JSP**, **Servlets**, **REST API** and **MySQL** as the database backend.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Installation Instructions](#installation-instructions)
5. [Usage](#usage)
6. [Folder Structure](#folder-structure)
7. [Database Schema](#database-schema)
8. [Contributing](#contributing)
9. [License](#license)
10. [Contact Information](#contact-information)

## Project Overview

The Air Ticket Reservation System is a dynamic web application that allows users to search for available flights, book tickets, view booking history, and manage reservations. This system is specifically designed for the Myanmar region, supporting local airlines and destinations.

### Key Features:
- **User Registration and Login**: Users can create an account and log in to manage their bookings.
- **Flight Search**: Search available flights based on departure and destination.
- **Booking**: Users can book flight tickets by selecting flights and entering passenger details.
- **View Bookings**: Users can view and manage their current and past bookings.
- **Admin Panel**: Admin users can manage flights, view bookings, and update flight schedules.
- **Payment Simulation**: A mock payment gateway to simulate ticket purchase.

## Features

- **Search Flights**: Search flights based on date, departure city, and destination.
- **Book Tickets**: Book available flights and save ticket details.
- **Manage Reservations**: Edit or cancel existing bookings.
- **Admin Dashboard**: Add, edit, or delete flights from the system.
- **User Authentication**: Secure login and registration for customers and administrators.
- **Responsive Design**: Fully responsive design for both desktop and mobile users.

## Technologies Used

- **Java EE** (Enterprise Edition)
- **JSP** (JavaServer Pages)
- **Servlets** for controlling business logic and page routing
- **MySQL** for database management
- **HTML/CSS/JavaScript** for front-end design
- **Bootstrap** for responsive design
- **Apache Tomcat** as the servlet container (for local development)

## Installation Instructions

To set up and run the **Air Ticket Reservation System**, follow these steps:

### Prerequisites:
- **Java**: Make sure you have **Java 8** or later installed.
- **Apache Tomcat**: Install **Tomcat 9** or later.
- **MySQL**: Set up a MySQL database for storing user, flight, and booking data.
- **Maven** (optional): If you prefer to build the project with Maven, ensure it's installed.

### Steps:
### 1.**Clone the Repository**:
   ```bash
   git clone https://github.com/NanGyeThote/air-ticket-reservation-system.git
   cd air-ticket-reservation-system
```
### 2. **Set Up the MySQL Database**
- **Create the MySQL Database**:

Log in to MySQL and create a new database:
   ```bash
   CREATE DATABASE air_ticket_reservation;
   ```

### **Import the Database Schema**:

Inside the project folder, you should find a file called schema.sql. This file contains the SQL schema to create the necessary tables for your system. Run the following command to import the schema into the newly created database:

   ```bash
   mysql -u root -p air_ticket_reservation < path_to_project/schema.sql
   ```
Replace path_to_project with the actual path to the schema.sql file in your project directory.

### **Set Up Database Credentials**:

In the web.xml or context.xml (depending on your configuration), configure the database connection settings, such as:
   ```bash
   <Resource name="jdbc/MySQLDS" auth="Container" type="javax.sql.DataSource"
  driverClassName="com.mysql.cj.jdbc.Driver"
  url="jdbc:mysql://localhost:3306/air_ticket_reservation"
  username="root" password="your_password" maxActive="100" />
```
Update username, password, and url with your actual database settings.

### **Set Up Apache Tomcat**:
- **Download and Install Apache Tomcat**:

Download and unzip the Apache Tomcat binary to your preferred directory.
- **Download and Install Apache Tomcat**:

In the bin folder of your Tomcat installation, run:

### **On Linux/macOS**:
