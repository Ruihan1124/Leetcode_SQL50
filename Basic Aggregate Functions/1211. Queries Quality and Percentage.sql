-- 1211. Queries Quality and Percentage
-- 2nd practice, 2025/6/19
-- easy

SELECT query_name,
ROUND(AVG(rating/position),2) AS quality,
ROUND(SUM(rating < 3)*100.0/COUNT(1),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name

-- Notes: at first i wrote 'ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0) * 100.0 / COUNT(1), 2)'
-- SUM(rating < 3): Boolean expressions are automatically converted to 1 or 0 in MySQL, suitable for counting.
