--	限制返回相同结果
SELECT DISTINCT vend_id
FROM Products;

--	限制返回行数
SELECT TOP 4 vend_id,prod_price
FROM Products;

--	指定排序方向（默认升序）
SELECT prod_name
FROM Products
ORDER BY prod_name;

SELECT prod_id,prod_price,prod_name
FROM Products
ORDER BY 2,3;			-- 等于ORDER BY prod_price,prod_name;

--	降序
SELECT prod_id,prod_price,prod_name				
FROM Products
ORDER BY 2 DESC,3;								-- 是按照本来表格书写列的位置，还是按照我们输入这些列的先后顺序？？？

-- 过滤数据
--	WHERE字句
SELECT prod_name,prod_price
FROM Products
WHERE prod_price = 3.49;

--	检查单个值
SELECT prod_name,prod_price
FROM Products
WHERE prod_price <= 10;

--	不匹配检查
SELECT vend_id,prod_name
FROM Products
WHERE vend_id != 'DLL01';	-- 等于<>, 注意何时用''

--	范围值
SELECT prod_name,prod_price
From Products
WHERE prod_price BETWEEN 5 AND 10;

--	空值检查
SELECT cust_name
FROM Customers
WHERE cust_email IS NULL;	--	我们在过滤指定值时，或许希望返回含NULL值的行，但因为未知（unknown）有特殊含义，数据库不知道他们是否匹配，所以不会返回结果
							--	过滤数据时，一定要验证被过滤列中含NULL的行确实出现在返回的数据中

--	高级数据过滤（操作符）
--	AND
SELECT  prod_id,prod_price,prod_name
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;	--	可以增加多个过滤条件，每个条件间都要用AND关键字

--	OR
SELECT prod_name,prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

--	求值顺序(易错)
SELECT prod_name,prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
AND prod_price >= 10;
/*
返回值有4行价格＜10 美元，显然返回的价格未按预期的进行过滤。
Why?原因在于操作符的优先级。AND在求值过程中优先级更高，
操作符被错误的组合了
*/
--	正确演示
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
WHERE NOT vend_id = 'DLL01'		--	等于 WHERE vend_id <> 'DLL01'
ORDER BY prod_name;

--	通配符过滤

--	LIKE 'a%'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE 'FISH%';	--	注意区分大小写.'FISH'与'fish'

--	LIKE '%a'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE '%toy';

--	LIKE '%a%'
SELECT prod_id,prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';


