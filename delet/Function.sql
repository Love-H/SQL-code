use tysql
go

SELECT * FROM Vendors;

-- ��ȥ�ո�
SELECT RTRIM(vend_name) + '('+ RTRIM(vend_country) + ')'	-- RTRIM ȥ����ߵĵĿո�LTRIMȥ���ұ� �� TRIM ȥ������
FROM Vendors
ORDER BY vend_name;

-- ����
SELECT RTRIM(vend_name) + '('+ RTRIM(vend_country) + ')'
	AS vend_title
FROM Vendors
ORDER BY vend_name;

-- ��������
SELECT prod_id,
	quantity,
	item_price,
	quantity*item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;

-- ����
-- UPPER
SELECT vend_name,
	UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

SELECT order_num
FROM Orders
WHERE DATEPART(yy,order_date) = 2012;