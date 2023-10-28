CREATE TABLE vehicles(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(10) NOT NULL UNIQUE,
    features VARCHAR(1000) NOT NULL,
    model_id INT,
    supplier_id INT,
    FOREIGN KEY(model_id) REFERENCES models(id),
    FOREIGN KEY(supplier_id) REFERENCES suppliers(id)
);