-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- 2nd practice 2025/5/29
-- Basic Join  easy level

-- Method 1: 
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits LEFT JOIN Transactions USING (visit_id)
WHERE transaction_id is NULL
GROUP BY customer_id

-- Method 2:
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits v 
WHERE v.visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY v.customer_id

--Notes:
-- 1. COUNT(*) means to count how many rows(record) are in each group.
