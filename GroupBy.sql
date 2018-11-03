use tysql
go

SELECT *
FROM Products;

SELECT vend_id
FROM Products;

SELECT SUM(prod_price)
FROM Products;

SELECT COUNT(vend_id) AS num_prods
FROM Products
WHERE vend_id = 'DLL01'

SELECT COUNT(*) AS num_prods
FROM Products
WHERE vend_id = 'DLL01'

SELECT vend_id, COUNT(vend_id) AS num_prods
FROM Products
GROUP BY vend_id;

SELECT cust_id,COUNT(cust_id) AS orders
FROM Orders
GROUP BY cust_id
HAVING COUNT(cust_id) >= 2;

SELECT vend_id, COUNT(vend_id) AS num_prods
FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(vend_id) >= 2;

SELECT	order_num,COUNT(order_num) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(order_num) >= 3;

SELECT	order_num,COUNT(order_num) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(order_num) >= 3
ORDER BY items,order_num;