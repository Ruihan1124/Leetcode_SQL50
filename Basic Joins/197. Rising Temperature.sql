-- 197. Rising Temperature
-- 2nd practice 2025/5/29
-- Basic Joins, easy level 
-- LAG, DATEDIFF, SELF JOIN

-- Method 1:
SELECT w1.Id
FROM weather w1 JOIN weather w2
ON DATEDIFF(W1.recordDate,w2.recordDate) = 1
WHERE w1.temperature > w2.temperature 

-- Notes:
-- 1. SELF JOIN based on specific conditions. Newly generated table seems like this.
  
| w1.id | w1.recordDate | w1.temp | w2.id | w2.recordDate | w2.temp |
| ----- | ------------- | ------- | ----- | ------------- | ------- |
| 2     | 2015-01-02    | 25      | 1     | 2015-01-01    | 10      |
| 3     | 2015-01-03    | 20      | 2     | 2015-01-02    | 25      |
| 4     | 2015-01-04    | 30      | 3     | 2015-01-03    | 20      |

-- 2. Only pick the record that w1.temp > w2.temp
  

-- Method 2:
SELECT id
FROM (
SELECT id, recordDate, temperature,
LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp,
LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date
FROM Weather
) AS sub
WHERE DATEDIFF(recordDate, prev_date) = 1
AND temperature > prev_temp

-- Notes: Use window function and subquery
-- 1. LAG() OVER (ORDER BY...)  --> Look up the "value of the previous row" in the current row.
-- ORDER BY --> means tell which row is 'last row'
-- 2. temporary table looks like:

| id | recordDate | temperature | prev\_temp | prev\_date |
| -- | ---------- | ----------- | ---------- | ---------- |
| 1  | 2015-01-01 | 10          | NULL       | NULL       |
| 2  | 2015-01-02 | 25          | 10         | 2015-01-01 |
| 3  | 2015-01-03 | 20          | 25         | 2015-01-02 |
| 4  | 2015-01-04 | 30          | 20         | 2015-01-03 |

-- 3. DATEDIFF(date1, date2) -->  date1 - date2 
