CREATE DATABASE retail_inventory;
USE retail_inventory;
CREATE TABLE products(
	product_id INT auto_increment primary key,
    product_name VARCHAR(50),
    category varchar(50),
    price DECIMAL(10,2)
);
    
CREATE TABLE suppliers(
	supplier_id INT auto_increment primary KEY,
    city VARCHAR(50),
    contact_email VARCHAR(50)
    );
CREATE TABLE product_suppliers(
	id INT auto_increment primary key,
    product_id INT,
    supplier_id INT,
    supply_price DECIMAL(10,2),
	FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
)

    