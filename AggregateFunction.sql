--- �ۼ�����
use tysql
go

-- AVG()
SELECT AVG(prod_price) AS avg_price
FROM Products

SELECT	AVG(prod_price) AS avg_price
FROM Products								-- AVG()���� ���� ��ֵΪ NULL ����
WHERE vend_id = 'DLL01';					-- Ϊ��ö���е�ƽ��ֵ������ʹ�ö��avg����

-- COUNT()
SELECT COUNT(*)AS num_cust					
FROM Customers

SELECT COUNT(cust_email) AS num_cust		-- �������⣬ָ����������COUNT()���������ָ���е�ֵΪ�յĺ���
FROM Customers;								-- �����⣬��COUNT()�����õ���(*)���򲻺���

-- MAX()
SELECT MAX(prod_price) AS max_price			-- �������ı�����ʱ��MAX()���ظ������������һ��
FROM Products;								-- MAX()�������� ��ֵ Ϊ NULL ����

-- MIN()
SELECT MIN(prod_price) AS max_price			-- �������ı�����ʱ��MAX()���ظ�����������ǰһ��
FROM Products;								-- MIN()�������� ��ֵ Ϊ NULL ����

-- SUM()
SELECT SUM(quantity) AS items_ordered		-- SUM()�������� ��ֵ Ϊ NULL ����		
FROM OrderItems			
WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price		-- ���оۼ�������������ִ�ж�����ϵļ���
FROM OrderItems										
WHERE order_num = 20005;

-- ��Ͼۼ�����
SELECT COUNT(*) AS num_items,
	MIN(prod_price) AS price_min,
	MAX(prod_price) AS price_max,
	AVG(prod_price) AS price_avg			-- �״�������滹�ӡ� ���������±���
FROM Products; 


