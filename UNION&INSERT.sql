use 
tysql
--------------------14.组合查询-------------------------------
SELECT Customers.cust_id,COUNT(Orders.order_num) AS num_ord
FROM Customers LEFT OUTER JOIN Orders
ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id

--- 使用UNION
-- 单条查询语句
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI');

SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- 使用UNION
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION									-----------UNION使用位置：两条 SELECT 语句之间
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All'; 

-- 输出全部行
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION ALL							
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- 排序
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION						
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All'
ORDER BY cust_name,cust_contact


--------------------15.数据插入-------------------------------
-- 插入完整行
INSERT INTO Customers(cust_id,
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email)
VALUES('1000000006',
	'Toy Land',
	'123 Any Street',
	'New York',
	'NY',
	'1111',
	'USA',
	NULL,
	NULL);

-- 忽略列
INSERT INTO Customers(cust_id,
	cust_contact,
	cust_email,	
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip)
VALUES('1000000006',
	NULL,
	NULL,
	'Toy Land',
	'123 Any Street',
	'New York',
	'NY',
	'1111');

-- 插入检索出的数据
INSERT INTO Customers(cust_id,
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email)
SELECT cust_id,
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email
FROM CustNew;

-- 从一个表复制到另一个表
SELECT *
INTO CustCopy
FROM Customers