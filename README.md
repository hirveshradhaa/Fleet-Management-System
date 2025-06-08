# Fleet Management System

This repository contains a Fleet Management System implemented in C# with a relational database backend. The system is designed to help manage vehicles, bookings, invoices, and customer information efficiently.

---

## Project Overview

The Fleet Management System allows administrators and staff to:

- Manage vehicle inventory including vehicle classes and fuel statuses.
- Handle bookings, including booking details and associated add-ons.
- Generate invoices based on bookings and add-ons.
- Maintain detailed records of customers, cities, states, and hubs.
- Use a relational database with robust foreign key constraints to ensure data integrity.

This system is intended for businesses that operate vehicle fleets, such as car rental companies, logistics providers, or any company that needs to manage vehicles and related customer interactions.

---

## Key Features

- Vehicle Management: Add, update, and manage vehicles and their classes (e.g., sedan, SUV).
- Booking Management: Create and manage bookings with pick-up and return dates and locations.
- Customer Management: Maintain customer profiles and contact information.
- Add-On Services: Include extra services (e.g., GPS, child seat) for bookings.
- Invoicing: Generate invoices with detailed breakdowns of rental charges and add-ons.
- Database Integration: Uses SQL Server with detailed table structures and foreign key constraints.

---

## Technologies Used

- C# (.NET) — For backend and business logic.
- SQL Server — Relational database with normalized schema.
- Entity Framework — For object-relational mapping (optional).
- Visual Studio — Development environment.

---

## Getting Started

### Prerequisites

- Visual Studio (2017 or later recommended)
- SQL Server (2016 or later recommended)
- .NET Framework installed

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/Fleet-Management-System.git
    cd Fleet-Management-System
    ```

2. Database Setup:
    - Open SQL Server Management Studio (SSMS).
    - Run the scripts in FleetMngmnt.txt and Project.txt to create the database tables and seed sample data.

3. Configure Connection String:
    - Update Web.config or App.config with your SQL Server connection string.

4. Build and Run:
    - Open the solution in Visual Studio.
    - Build the project.
    - Run the application locally.

---

## Database Schema

The database schema includes:

- State, City, and Hub tables for location management.
- Vehicle and CarClass tables for vehicle details.
- Customer and Login tables for user management.
- Booking_hdr, Booking_dtc for booking details.
- Invoice_hdr, Invoice_dtc for invoicing.

Refer to FleetMngmnt.txt for detailed CREATE TABLE statements and relationships.

---

## Contributing

Contributions are welcome! Please fork the repo and submit a pull request for bug fixes, new features, or improvements.

---

## Additional Notes

- City and State sample data can be found in Records.txt.
- Use appropriate foreign key constraints to ensure referential integrity.
- Screenshots or sample runs can be added here in future iterations.

---
