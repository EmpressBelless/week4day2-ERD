CREATE TABLE customers (
	Customer_ID SERIAL PRIMARY KEY,
	First_Name VarChar(50),
	Last_Name VARCHAR(50),
	Date_visited DATE,
	ticket_id int,
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);
CREATE TABLE tickets (
	ticket_ID SERIAL PRIMARY KEY,
	tickets_sold INT,
	transaction_Date DATE DEFAULT CURRENT_DATE,
	film_ID int,
	customer_id INT
);
CREATE TABLE concession (
	Transaction_ID SERIAL PRIMARY KEY,
	product_id int,
	date_transaction DATE,
	product_price int,
	product_name VARCHAR(50),
	FOREIGN KEY(product_id) REFERENCES inventory(product_id)
);
CREATE TABLE inventory (
	Product_id SERIAL PRIMARY KEY,
	Product_name VARCHAR(50),
	Date_Ordered DATE,
	Product_Vendor VARCHAR(50),
	Product_Maker VARCHAR(100),
	Description VARCHAR(225)
);
CREATE TABLE movie_leases (
	Film_ID SERIAL PRIMARY KEY,
	Date_leased DATE,
	Date_LEASE_ENDS DATE,
	Amount_of_Purchase INT,
	Film_Supplier VARCHAR(100)
);