const { Client } = require('pg');
const fs = require('fs');

// PostgreSQL connection configuration
const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres', // Connect to the "products" database directly
    password: 'mysecretpassword',
    port: 5432,
});

// Read the SQL dump file
const sqlDump = fs.readFileSync('init.sql').toString();

async function main() {
    try {
        // Connect to the PostgreSQL server
        await client.connect();
        console.log('Connected to PostgreSQL');

        // Execute the SQL dump file to create tables and insert data
        await client.query(sqlDump);
        console.log('SQL dump executed successfully');

    } catch (error) {
        console.error('Error:', error);
    } finally {
        // Close the database connection
        await client.end();
        console.log('Disconnected from PostgreSQL');
    }
}

main();
