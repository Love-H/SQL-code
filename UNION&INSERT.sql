use 
tysql
--------------------14.��ϲ�ѯ-------------------------------
SELECT Customers.cust_id,COUNT(Orders.order_num) AS num_ord
FROM Customers LEFT OUTER JOIN Orders
ON Customers.cust_id = Orders.cust_id
GROUP BY Customers.cust_id

--- ʹ��UNION
-- ������ѯ���
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI');

SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- ʹ��UNION
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION									-----------UNIONʹ��λ�ã����� SELECT ���֮��
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All'; 

-- ���ȫ����
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION ALL							
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- ����
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION						
SELECT cust_name,cust_contact,cust_email
FROM Customers
WHERE cust_name = 'Fun4All'
ORDER BY cust_name,cust_contact


--------------------15.���ݲ���-------------------------------
-- ����������
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

-- ������
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

-- ���������������
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

-- ��һ�����Ƶ���һ����
SELECT *
INTO CustCopy
FROM Customers