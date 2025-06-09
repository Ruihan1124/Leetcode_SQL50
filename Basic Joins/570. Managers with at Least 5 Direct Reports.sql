-- 570. Managers with at Least 5 Direct Reports
-- Basic Join, Medium level
-- 2nd practice, 2025/5/31

SELECT e1.name
FROM Employee e1 JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY 1
HAVING COUNT(1) >= 5

-- Notes: Self Join + Group + Count (自连接，分组计数)
