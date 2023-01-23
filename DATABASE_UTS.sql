select * from customers;
select * from orders;
select * from products;
select * from sales;

INSERT INTO products(product_id, product_type, product_name, size, colour, price, quantity, description)
VALUES
	('1260','jacket','j1','M','red','100','50','tes1'),
    ('1261','jacket','j2','S','green','100','50','tes2'),
	('1262','jacket','j3','L','blue','100','50','tes3');

UPDATE products
SET size = 'XL'
WHERE product_id = '1260';

UPDATE products
SET size = 'XS'
WHERE product_id = '1261';

UPDATE products
SET size = 'M'
WHERE product_id = '1262';

DELETE FROM products WHERE product_id ='1260';
DELETE FROM products WHERE product_id ='1261';
DELETE FROM products WHERE product_id ='1262';

SELECT COUNT(quantity) AS product_quantity FROM products;
SELECT COUNT(colour) AS total_red_colour FROM products
WHERE colour = 'red';
SELECT COUNT(quantity) AS total_sales_43 FROM sales
WHERE quantity > 2 AND product_id = '43';