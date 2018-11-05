--	���Ʒ�����ͬ���
SELECT DISTINCT vend_id
FROM Products;

--	���Ʒ�������
SELECT TOP 4 vend_id,prod_price
FROM Products;

--	ָ��������Ĭ������
SELECT prod_name
FROM Products
ORDER BY prod_name;

SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY 2,3;			-- ����ORDER BY prod_price,prod_name;

--	����
SELECT prod_id,prod_price,prod_name				
FROM Products
ORDER BY 2 DESC,3;								-- �ǰ��ձ��������д�е�λ�ã����ǰ�������������Щ�е��Ⱥ�˳�򣿣���

-- ��������
--	WHERE�־�
SELECT prod_name,prod_price
FROM Products
WHERE prod_price = 3.49;

--	��鵥��ֵ
SELECT prod_name,prod_price
FROM Products
WHERE prod_price <= 10;

--	��ƥ����
SELECT vend_id,prod_name
FROM Products
WHERE vend_id != 'DLL01';	-- ����<>, ע���ʱ��''

--	��Χֵ
SELECT prod_name,prod_price
From Products
WHERE prod_price BETWEEN 5 AND 10;

--	��ֵ���
SELECT cust_name
FROM Customers
WHERE cust_email IS NULL;	--	�����ڹ���ָ��ֵʱ������ϣ�����غ�NULLֵ���У�����Ϊδ֪��unknown�������⺬�壬���ݿⲻ֪�������Ƿ�ƥ�䣬���Բ��᷵�ؽ��
							--	��������ʱ��һ��Ҫ��֤���������к�NULL����ȷʵ�����ڷ��ص�������

--	�߼����ݹ��ˣ���������
--	AND
SELECT  prod_id,prod_price,prod_name
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;	--	�������Ӷ������������ÿ�������䶼Ҫ��AND�ؼ���

--	OR
SELECT prod_name,prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

--	��ֵ˳��(�״�)
SELECT prod_name,prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
AND prod_price >= 10;
/*
����ֵ��4�м۸�10 ��Ԫ����Ȼ���صļ۸�δ��Ԥ�ڵĽ��й��ˡ�
Why?ԭ�����ڲ����������ȼ���AND����ֵ���������ȼ����ߣ�
������������������
*/
--	��ȷ��ʾ
SELECT prod_name,prod_price
FROM Products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01')
AND prod_price >= 10;

--	IN
SELECT prod_name,prod_price
FROM Products
WHERE vend_id IN('DLL01','BRS01')
ORDER BY prod_name;

--	NOT
SELECT prod_name
FROM Products
WHERE NOT vend_id = 'DLL01'		--	���� WHERE vend_id <> 'DLL01'
ORDER BY prod_name;

--	ͨ�������

--	LIKE 'a%'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE 'FISH%';	--	ע�����ִ�Сд.'FISH'��'fish'

--	LIKE '%a'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE '%toy';

--	LIKE '%a%'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';


