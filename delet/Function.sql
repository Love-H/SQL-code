use tysql
go

SELECT * FROM Vendors;

-- 除去空格
SELECT RTRIM(vend_name) + '('+ RTRIM(vend_country) + ')'	-- RTRIM 去除左边的的空格；LTRIM去除右边 ； TRIM 去除两边
FROM Vendors
ORDER BY vend_name;

-- 别名
SELECT RTRIM(vend_name) + '('+ RTRIM(vend_country) + ')'
	AS vend_title
FROM Vendors
ORDER BY vend_name;

-- 算数计算
SELECT prod_id,
	quantity,
	item_price,
	quantity*item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;

-- 函数
-- UPPER
SELECT vend_name,
	UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

SELECT order_num
FROM Orders
WHERE DATEPART(yy,order_date) = 2012;