--- 聚集函数
use tysql
go

-- AVG()
SELECT AVG(prod_price) AS avg_price
FROM Products

SELECT	AVG(prod_price) AS avg_price
FROM Products								-- AVG()函数 忽略 列值为 NULL 的行
WHERE vend_id = 'DLL01';					-- 为获得多个列的平均值，必须使用多个avg函数

-- COUNT()
SELECT COUNT(*)AS num_cust					
FROM Customers

SELECT COUNT(cust_email) AS num_cust		-- 若如左题，指定列名，则COUNT()函数会忽略指定列的值为空的函数
FROM Customers;								-- 如上题，若COUNT()函数用的是(*)，则不忽略

-- MAX()
SELECT MAX(prod_price) AS max_price			-- 在用于文本数据时，MAX()返回该列排序后的最后一行
FROM Products;								-- MAX()函数忽略 列值 为 NULL 的行

-- MIN()
SELECT MIN(prod_price) AS max_price			-- 在用于文本数据时，MAX()返回该列排序后的最前一行
FROM Products;								-- MIN()函数忽略 列值 为 NULL 的行

-- SUM()
SELECT SUM(quantity) AS items_ordered		-- SUM()函数忽略 列值 为 NULL 的行		
FROM OrderItems			
WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price		-- 所有聚集函数都能用来执行多个列上的计算
FROM OrderItems										
WHERE order_num = 20005;

-- 组合聚集函数
SELECT COUNT(*) AS num_items,
	MIN(prod_price) AS price_min,
	MAX(prod_price) AS price_max,
	AVG(prod_price) AS price_avg			-- 易错：在最后面还加“ ，”，导致报错
FROM Products; 


