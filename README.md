# SQL Injection Demo with Express.js and PostgreSQL

This repository contains a simple Node.js application built with Express.js that demonstrates how SQL injection vulnerabilities can be exploited when interacting with a PostgreSQL database.

## Prerequisites

Before running the application, ensure that you have the following installed:

- Node.js and npm
- Docker (for running PostgreSQL in a container)

## Setting Up the Application

### Clone this repository to your local machine

`git clone https://github.com/IntegerAlex/sql-injection-demo`

Navigate to the project directory:

`cd project_directory`
Install dependencies:

`npm install`

## PostgreSQL Docker Container

To run the application, you'll need a PostgreSQL database. You can use Docker to quickly spin up a PostgreSQL container:

`docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres`

### Running the Application

Once the PostgreSQL container is running, you can start the Node.js application:

TO initilize database run the following command:
`npm run db`

To start the application, run:
`npm run dev`

The application will start listening on port 3000 by default.

## SQL Injection Demo

The application includes a vulnerable endpoint (/products) that is susceptible to SQL injection. You can perform a SQL injection attack by sending a POST request with malicious input.

Here's an example of a SQL injection payload to retrieve all products from the database:

```sql
' UNION SELECT ProductID, ProductName, Description, Price, StockQuantity FROM Products; --
```

You can use tools like curl, Postman, or any HTTP client to send the malicious request to the /products endpoint and observe the results.

Disclaimer
This application is for educational purposes only. SQL injection vulnerabilities can have severe consequences if exploited in a real-world application. Always sanitize and validate user input, use parameterized queries, and implement proper access controls to prevent SQL injection attacks in production environments.
