use tysql
go

----------------------------------------------REVIEW---------------------------------------------------------------------------
----GROUP BY

-- ���ۼ���������⣬SELECT����е�ÿһ�ж�������GROUP BY �Ӿ��и���
SELECT	vend_id,prod_price,COUNT(vend_id) AS num_prods,COUNT(prod_price) AS num_pri
FROM Products
GROUP BY vend_id,prod_price		-- ��һ���ۼ�������GROUP BY ���Ҫ��Ӷ�Ӧ��һ��
--	Wrong:ѡ���б��е��� 'Products.prod_price' ��Ч����Ϊ����û�а����ھۺϺ����� GROUP BY �Ӿ��С�


--	GROUP BY �Ӿ��е�ÿһ�ж������Ǿۼ�����������Ϊ�����л���Ч�ı��ʽ������GOUP BY�еı��ʽ����ʹ�ñ�����
SELECT	vend_id,prod_price,COUNT(vend_id) AS num_prods
FROM Products
GROUP BY COUNT(vend_id);
--	Wrong:������ GROUP BY �Ӿ���������б�ı��ʽ�У�����ʹ�þۺϻ��Ӳ�ѯ


SELECT * FROM Products;

