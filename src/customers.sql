CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    fullname VARCHAR(40) AS (CONCAT(firstname,' ',lastname)) VIRTUAL,
    phone INT NOT NULL,
    gender ENUM('Male','Female','Others') NOT NULL,
    address VARCHAR(100) NOT NULL,
    annual_income INT NOT NULL,
    CONSTRAINT phone_not_valid CHECK(phone>1000000000 AND phone<9999999999),
    CONSTRAINT income_not_valid CHECK(annual_income>0)
);