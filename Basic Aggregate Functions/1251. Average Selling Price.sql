-- 1251. Average Selling Price
-- 2nd, 2025/6/9
-- very easy, just think clearly

-- Answer I think is better
SELECT p.product_id,
ROUND(IFNULL((SUM(p.price*u.units)/SUM(u.units)),0),2) AS average_price
FROM Prices p LEFT JOIN UnitsSold u ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id
  
-- First try, this solution works on leetcode, but do not consider product that do not sell
SELECT p.product_id,
ROUND((SUM(p.price*u.units)/SUM(u.units)),2) AS average_price
FROM Prices p LEFT JOIN UnitsSold u USING(product_id)
WHERE u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id
