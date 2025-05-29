-- 1068. Product Sales Analysis I
-- 2nd practice 2025/5/29
--Basic Joins

SELECT product_name, year, price
FROM Sales JOIN Product USING (product_id)

-- Notes: very easy, almost same as 1378
