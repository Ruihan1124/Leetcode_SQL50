-- 1075. Project Employees I
-- 2nd, 2025/6/11, very easy

SELECT project_id,
ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p LEFT JOIN Employee e USING(employee_id)
GROUP BY p.project_id
