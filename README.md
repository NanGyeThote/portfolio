# Air Ticket Reservation System (Java EE JSP) for Myanmar

This is a **Java EE-based Air Ticket Reservation System** designed for **Myanmar**. The system provides a web-based interface for booking flights, checking available flights, and managing reservations. It is built using **JSP**, **Servlets**, and **MySQL** as the database backend.

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
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/NanGyeThote/air-ticket-reservation-system.git
   cd air-ticket-reservation-system

2. **Set up MySQL Database**:

-- **Create a database in MySQL** (e.g., air_ticket_reservation).
-- **Import the database schema from db_schema.sql** (provided in this repo).
-- **Configure Database Connection**:

-- **Open the WEB-INF/web.xml or META-INF/context.xml file and configure the MySQL database connection** (database name, username, password, etc.).
-- **Deploy on Apache Tomcat**:

-- **Copy your project to the webapps directory of your Tomcat installation**.
-- **Start Tomcat via the Tomcat server management interface**.
-- **Access the Application**:

-- **Open your browser and go to**: 
  ```bash
http://localhost:8080/air-ticket-reservation-system/
-- **Log in or register a new account to start using the system.
```
-- **Usage**
-- **User Roles**:
-- **Customer**:

-- **Register and log in to the system**.
-- **Search for available flights**.
-- **Book tickets and view bookings**.
-- **Cancel or modify reservations**.
-- **Admin**:

-- **Log in to the admin panel**.
-- **Add, update, or delete flights**.
-- **View all customer bookings**.
-- **Example Use Case**:
-- **Search Flights: A user enters their departure city, destination, and travel date. The system will show all available flights**.
-- **Book a Ticket: A user selects a flight, enters passenger information, and completes the booking**.
-- **Admin Features: Admins can update the flight schedule, add new flights, or cancel old ones**.
-- **Folder Structure**
-- **Here’s a brief overview of the project’s folder structure**:
