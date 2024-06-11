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
VALUES ('Leonardo Borges', '1990-05-10', '24859785738', 'leonardo.borges@example.com', 'SINGLE');

-- Inserting a woman employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Bruna Silva', '1992-03-25', '26396088940', 'bruna.silva@example.com', 'MARRIED');

-- Inserting a man employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Theodoro Borges', '1982-08-12', '55931523812', 'theodoro.borges@example.com', 'DIVORCED');

-- Inserting a woman employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Ana Puentes', '1990-01-05', '47312211968', 'ana.puentes@example.com', 'WIDOWED');

-- Inserting a woman employee
INSERT INTO employees (name, birthdate, cpf, email, marital_status) 
VALUES ('Fernanda tadiotto', '1986-03-25', '73123327655', 'fernanda.tadiotto@example.com', 'MARRIED');

