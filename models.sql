CREATE TABLE models(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    modelname VARCHAR(100) NOT NULL,
    styles VARCHAR(1000),
    brand_id INT,
    FOREIGN KEY(brand_id) REFERENCES brands(id)
);