const express = require('express');
const { Client } = require('pg');
const path = require('path');

// PostgreSQL connection configuration
const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'mysecretpassword',
    port: 5432,
});

// Connect to the PostgreSQL server
client.connect()
    .then(() => console.log('Connected to PostgreSQL'))
    .catch(err => console.error('Connection error', err));

const app = express();

app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());

app.post("/products", async (req, res) => {
  console.log(req.body);  

    try {
        // 'UNION SELECT ProductID, ProductName, Description, Price, StockQuantity FROM Products; --
        // sudo docker run --name my-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres
        const query = `SELECT * FROM products WHERE ProductName LIKE '%${req.body.name}%'`;
        const result = await client.query(query);

        if (result.rows.length === 0)
            res.status(404).json({
                message: "No Product Found"
            });
        else
            console.log(result.rows); 
            res.status(200).json(result.rows);
    } catch (error) {
        console.error("Error executing query:", error);
        res.status(500).json({
            message: "Internal Server Error",
        });
    } 
});

app.use((req, res) => {
    res.sendFile(path.join(__dirname, "public", "404.html"));
});

const port =  3000;
app.listen(port, () => console.log(`Listening on port ${port}`));
