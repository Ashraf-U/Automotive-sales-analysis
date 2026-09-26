CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),
    customer_since DATE
);

CREATE TABLE dealers (
    dealer_id INT PRIMARY KEY,
    dealer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    dealer_type VARCHAR(30)
);

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    vehicle_type VARCHAR(30),
    fuel_type VARCHAR(30),
    production_year INT,
    list_price DECIMAL(12,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    dealer_id INT,
    vehicle_id INT,
    order_date DATE,
    delivery_date DATE,
    quantity INT,
    selling_price DECIMAL(12,2),
    discount DECIMAL(12,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(30),
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (dealer_id) REFERENCES dealers(dealer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);
