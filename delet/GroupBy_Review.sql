use tysql
go

----------------------------------------------REVIEW---------------------------------------------------------------------------
----GROUP BY

-- 除聚集计算语句外，SELECT语句中的每一列都必须在GROUP BY 子句中给出
SELECT	vend_id,prod_price,COUNT(vend_id) AS num_prods,COUNT(prod_price) AS num_pri
FROM Products
GROUP BY vend_id,prod_price		-- 有一个聚集函数，GROUP BY 后就要多加对应的一列
--	Wrong:选择列表中的列 'Products.prod_price' 无效，因为该列没有包含在聚合函数或 GROUP BY 子句中。


--	GROUP BY 子句中的每一列都不能是聚集函数，可以为检索列或有效的表达式，（且GOUP BY中的表达式不能使用别名）
SELECT	vend_id,prod_price,COUNT(vend_id) AS num_prods
FROM Products
GROUP BY COUNT(vend_id);
--	Wrong:在用于 GROUP BY 子句分组依据列表的表达式中，不能使用聚合或子查询


SELECT * FROM Products;

