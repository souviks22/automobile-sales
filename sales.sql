CREATE TABLE sales(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    dealer_id INT,
    customer_id INT,
    price INT NOT NULL,
    deal_date DATE NOT NULL,
    sold_date DATE NOT NULL,
    FOREIGN KEY(vehicle_id) REFERENCES vehicles(id),
    FOREIGN KEY(dealer_id) REFERENCES dealers(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id),
    CONSTRAINT price_not_valid CHECK(price>0)
);