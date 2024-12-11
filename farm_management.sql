
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role ENUM('admin', 'user') DEFAULT 'user'
);
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(255),
    name VARCHAR(255),
    price FLOAT,
    image_path VARCHAR(255)
);
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    items TEXT,
    total_price FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
  
CREATE TABLE admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO admin_users (username, password) 
VALUES ('admin', MD5('password123')); -- Replace with your secure password hashing
