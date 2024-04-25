CREATE DATABASE ECOMMERCE;

USE ECOMMERCE;

CREATE TABLE role (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE user(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL, 
  password VARCHAR (100) NOT NULL,
  role_id INT ,
  FOREIGN KEY (role_id) REFERENCES role(id)
);
  
CREATE TABLE admin (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  user_id INT,
  FOREIGN KEY(user_id) REFERENCES user(id)
);  

CREATE TABLE custommer(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  zip_code VARCHAR(100) NOT NULL,
  street VARCHAR(100) NOT NULL,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES user(id)
); 

CREATE TABLE statu (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);  

CREATE TABLE orders(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ordered_at DATETIME NOT NULL,
  delivered_at DATETIME,
  amount INT NOT NULL,
  custommer_id INT,
  statu_id INT DEFAULT 1 ,
  FOREIGN KEY (custommer_id) REFERENCES custommer(id),
  FOREIGN KEY (statu_id) REFERENCES statu(id)
);
  
  
 CREATE TABLE category(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(50)
 );
 
 CREATE TABLE product(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   description TEXT NOT NULL,
   price INT NOT NULL,
   stock INT NOT NULL,
   category_id INT,
   FOREIGN KEY(category_id) REFERENCES category(id)
 );
 
CREATE TABLE order_product(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  order_id INT ,
  quantity INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (order_id) REFERENCES orders(id)
);









