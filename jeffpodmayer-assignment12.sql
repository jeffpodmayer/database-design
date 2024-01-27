-- creating the pizza shop database
CREATE DATABASE pizza_shop;

-- set to use the database
USE pizza_shop;

-- creating the three main tables
CREATE TABLE customers (
   customer_id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(255),
   last_name VARCHAR(255),
   phone_number BIGINT,
   PRIMARY KEY (customer_id)
);

CREATE TABLE  orders (
	order_id INT,
    customer_id INT,
    order_amount INT,
    order_date DATETIME,
    PRIMARY KEY (order_id)
);

CREATE TABLE  menu_items (
	item_id INT NOT NULL AUTO_INCREMENT,
    item_name VARCHAR(255),
    item_price DECIMAL(8,2),
    PRIMARY KEY (item_id)
);

-- creating table for the three above tables
CREATE TABLE customers_menu_orders (
	customer_id INT NOT NULL,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
    );



