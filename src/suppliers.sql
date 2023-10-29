CREATE TABLE suppliers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    suppliername VARCHAR(100) NOT NULL,
    model_id INT,
    FOREIGN KEY(model_id) REFERENCES models(id)
);