-- Dealers Table

CREATE TABLE dealers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dealername VARCHAR(40) NOT NULL
);

INSERT INTO dealers(dealername)
VALUES ('John Smith'),('Emily Johnson'),('Michael Davis'),('Sarah Brown'),('David Wilson'),
('Jennifer Lee'),('Robert Taylor'),('Lisa Anderson'),('William Evans'),('Jessica Hall'),
('Christopher Clark'),('Mary White'),('James Harris'),('Amanda Martinez'),('Joseph Lewis'),
('Melissa Moore'),('Daniel Turner'),('Elizabeth Baker'),('Richard Parker'),('Nicole Young');