-- ================================================
-- Create Database: Library
-- ================================================

-- Create the database
CREATE DATABASE IF NOT EXISTS Library
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

-- Switch to the Library database
USE Library;

-- ================================================
-- Create Tables (Example)
-- ================================================

-- 1. Authors Table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Bio TEXT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Publishers Table
CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Categories Table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);

-- 4. Books Table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(150) NOT NULL,
    AuthorID INT,
    PublisherID INT,
    CategoryID INT,
    PublishedYear YEAR,
    ISBN VARCHAR(20),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- 5. Countries Table
CREATE TABLE Countries (
    country_id CHAR(2) NOT NULL,
    country_name VARCHAR(100),
    nationality VARCHAR(100),
    calling_code INT,
    PRIMARY KEY (country_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- ================================================
-- Verify Tables
-- ================================================
SHOW TABLES;

-- ================================================
-- Verify Database
-- ================================================
SHOW DATABASES;