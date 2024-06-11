<?php

class Database
{
    // Database connection parameters
    private $host = 'mysql';
    private $db_name = 'employees_db';
    private $username = 'root';
    private $password = 'root_password';
    public $conn; // Database connection object

    // Maximum number of connection attempts
    private $max_connection_attempts = 10;

    // Method to establish a database connection
    public function getConnection()
    {
        $this->conn = null; // Initialize connection object to null
        $attempts = 0;

        //echo "Carregando"; // Print "Carregando" once

        do {
            try {
                // Attempt to create a new PDO instance for database connection
                $this->conn = new PDO("mysql:host={$this->host};dbname={$this->db_name}", $this->username, $this->password);
                // Set character set to UTF-8
                $this->conn->exec("set names utf8");
                break; // If connection successful, exit loop
            } catch (PDOException $exception) {
                // Add a dot for each attempt
                //echo ".";
                // Wait for a short period before retrying
                sleep(5);
                $attempts++;
                if ($attempts >= $this->max_connection_attempts) {
                    // Maximum attempts reached, display final error message
                    echo "\nFailed to establish database connection after {$this->max_connection_attempts} attempts. Please try again later.\n";
                    // Exit loop
                    break;
                }
            }
        } while (!$this->conn && $attempts < $this->max_connection_attempts);

        // Return the database connection object
        return $this->conn;
    }
}
