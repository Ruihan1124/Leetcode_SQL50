-- 1378. Replace Employee ID With The Unique Identifier
-- Basic Joins
-- 2nd practice: 2025/5/29

SELECT unique_id, name
FROM Employees LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id
--make a mistake here, wrongly use 'WHERE' not 'ON'

-- easy writing:
SELECT unique_id, name
FROM Employees LEFT JOIN EmployeeUNI USING (id)

-- Notes:
-- 1. JOIN means INNER JOIN, only keep rows both two tables have.
-- 2. LEFT JOIN must clarify join condition, using 'ON' not 'WHERE'.
-- 3. LEFT JOIN want to retain all data in left table. 
-- 4. In this case, even some row do not have unique_id, will still keep and show as 'NULL'. 
-- 5. If use 'WHERE', will filter all 'NULL' rows.
