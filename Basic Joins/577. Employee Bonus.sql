-- 577. Employee Bonus
-- 2nd practice : 2025/5/31
-- very easy
SELECT name, bonus
FROM Employee LEFT JOIN Bonus USING (empID)
WHERE bonus is NULL OR bonus < 1000
