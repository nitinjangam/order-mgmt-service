# Order Management Service

The Order Management Service is a microservice designed to handle the entire lifecycle of customer orders. It provides functionalities for order creation, tracking, payment integration, and inventory management. This service is intended to be a part of a larger microservices architecture, facilitating efficient and organized order processing for your application.

## Features

- **Order Creation:** Customers can place new orders by providing product details and shipping information.
- **Order Tracking:** Monitor the status of orders throughout their lifecycle.
- **Payment Integration:** Initiate payment processing and handle payment authorization.
- **Inventory Management:** Ensure product availability and manage stock levels.
- **Communication:** Send notifications to customers about order confirmation, status updates, and more.

## Getting Started

### Prerequisites

- Go (version 1.21 or higher)
- [Database](#database-setup) (e.g., MySQL, PostgreSQL)

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/order-mgmt-service.git
   cd order-mgmt-service

2. Install dependencies using the Makefile:

   ```bash
   make deps

3. Set up the required environment variables in .env.

### Build and run the service:
- 
   ```bash
   make run

### Database Setup
   Create a database for the Order Management Service.
   Update the database connection details in your .env file.

### Running Tests
- You can run tests and generate a coverage report using the following command:

   ```bash
   make test

- The coverage report will be saved in coverage.out.

### Contributing
- Contributions to this project are welcome! Please read CONTRIBUTING.md for more information.

### Cleaning Up
- To clean temporary files generated during development, you can use:

   ```bash
   make clean