-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CONNECT DATABASE
\c ecommerce_db;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS tag CASCADE;
DROP TABLE IF EXISTS productTag CASCADE;

-- Create the category table
CREATE TABLE category (
   
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- -- Create the product table
CREATE TABLE product (
    
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INTEGER DEFAULT 10 NOT NULL
);

-- Create the tag table
CREATE TABLE tag (
    
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
-- Create the productTag table
CREATE TABLE productTag (
    
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(id),
    tag_id INTEGER REFERENCES tag(id)
);