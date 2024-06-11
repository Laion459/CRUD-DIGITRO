-- Create database if not exist
CREATE DATABASE IF NOT EXISTS employees_db;

USE employees_db;

-- Create table if not and istnserting employees and your caracteristics
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    marital_status ENUM('SINGLE', 'MARRIED', 'DIVORCED', 'WIDOWED') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Inserting a man employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Leonardo Borges', '1990-05-10', '12345678901', 'leonardo.borges@example.com', 'SINGLE');

-- Inserting a woman employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Bruna Silva', '1992-03-25', '98765432109', 'bruna.silva@example.com', 'MARRIED');

-- Inserting a man employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Theodoro Borges', '1982-08-12', '11122233344', 'theodoro.borges@example.com', 'DIVORCED');

-- Inserting a woman employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Ana Puentes', '1990-01-05', '44455566677', 'ana.puentes@example.com', 'WIDOWED');