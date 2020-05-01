CREATE DATABASE shop;

USE shop;

SHOW tables;

DESCRIBE users;

UPDATE users SET
	created_at = NOW(),
	updated_at = NOW();

SELECT * FROM users LIMIT 10;

SELECT DATE_FORMAT(STR_TO_DATE('20.10.2017 8:10','%Y%c%e%H%i%s'), '%d.%m.%Y %H:%m:%s');

SELECT * FROM storehouses_products LIMIT 10;

DESC storehouses_products;

INSERT INTO storehouses_products(value) VALUES(0);

INSERT INTO storehouses_products(value) VALUES(2500);

INSERT INTO storehouses_products(value) VALUES(30);

INSERT INTO storehouses_products(value) VALUES(500);

INSERT INTO storehouses_products(value) VALUES(1);

SELECT * FROM storehouses_products;

SELECT
  *
FROM
  storehouses_products
ORDER BY
  value DESC;
  
SELECT * FROM users LIMIT 20;

SELECT name, MONTHNAME(birthday_at) AS birthday_at 
  FROM users
  WHERE birthday_at LIKE '19%-05-%';
  

SELECT name, MONTHNAME(birthday_at) AS birthday_at 
  FROM users
  WHERE birthday_at LIKE '19%-08-%';
 

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, '5', '1', '2') ;

SELECT
  AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS age
FROM
  users;
     
  
 SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total
FROM
	users
GROUP BY
	day
ORDER BY
	total DESC;

CREATE TABLE integers(
    value SERIAL PRIMARY KEY
);

TRUNCATE integers;

INSERT INTO integers VALUES
    (3),
    (5),
    (4),
    (6),
    (7),
    (2);
	
SELECT ROUND(exp(SUM(ln(value))), 0) AS factorial FROM integers;