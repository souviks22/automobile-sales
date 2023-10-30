-- Sample Queries

-- #1
SELECT 
brandname AS brand,
YEAR(sold_date) AS year,
MONTHNAME(sold_date) AS month,
WEEKDAY(sold_date) AS week,
SUM(price) AS amount,
gender
FROM sales
INNER JOIN customers ON sales.customer_id = customers.id
INNER JOIN vehicles ON sales.vehicle_id = vehicles.id
INNER JOIN suppliers ON vehicles.supplier_id = suppliers.id
INNER JOIN models ON suppliers.model_id = models.id
INNER JOIN brands ON models.brand_id = brands.id
WHERE YEAR(sold_date)>2020
GROUP BY brandname, YEAR(sold_date), MONTH(sold_date), WEEKDAY(sold_date), gender
ORDER BY brandname, YEAR(sold_date) DESC, MONTH(sold_date) DESC, WEEKDAY(sold_date) DESC;

-- #2
SELECT 
vin, 
suppliername AS supplier, 
deal_date AS date, 
fullname AS customer 
FROM sales
INNER JOIN vehicles ON sales.vehicle_id = vehicles.id
INNER JOIN suppliers ON vehicles.supplier_id = suppliers.id
INNER JOIN customers ON sales.customer_id = customers.id
WHERE deal_date BETWEEN '2021-10-31' AND '2023-08-17'
AND suppliername = 'Precision Auto Care';

-- #3
SELECT 
brandname AS brand,
SUM(price) AS amount
FROM sales
INNER JOIN vehicles ON sales.vehicle_id = vehicles.id
INNER JOIN suppliers ON vehicles.supplier_id = suppliers.id
INNER JOIN models ON suppliers.model_id = models.id
INNER JOIN brands ON models.brand_id = brands.id
GROUP BY brands.id
ORDER BY amount DESC LIMIT 2;

-- #4
SELECT 
brandname AS brand,
COUNT(*) AS units
FROM sales
INNER JOIN vehicles ON sales.vehicle_id = vehicles.id
INNER JOIN suppliers ON vehicles.supplier_id = suppliers.id
INNER JOIN models ON suppliers.model_id = models.id
INNER JOIN brands ON models.brand_id = brands.id
GROUP BY brands.id
ORDER BY units DESC LIMIT 2;

-- #5
SELECT 
MONTHNAME(sold_date) AS month,
COUNT(*) AS units
FROM sales
INNER JOIN vehicles ON sales.vehicle_id = vehicles.id
INNER JOIN suppliers ON vehicles.supplier_id = suppliers.id
INNER JOIN models ON suppliers.model_id = models.id
WHERE LOCATE('spacious',styles) != 0
GROUP BY MONTH(sold_date)
ORDER BY units DESC LIMIT 1;

-- #6
SELECT
dealername AS dealer,
AVG(sold_date-deal_date) AS standby
FROM sales
INNER JOIN dealers ON sales.dealer_id = dealers.id
GROUP BY dealer_id
ORDER BY standby DESC LIMIT 1;