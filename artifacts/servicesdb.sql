USE RETAILER;

CREATE TABLE products (
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(30) NOT NULL,
	price FLOAT
);

DROP TABLE transactions;
CREATE TABLE transactions (
   id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	transaction_no VARCHAR(20) NOT NULL,
	product_code VARCHAR(10) NOT NULL,
	product_name VARCHAR(30) NOT NULL,
	quantity INT(10),
	stk_upd_ref VARCHAR(30) NOT NULL,
	total_amount FLOAT
);