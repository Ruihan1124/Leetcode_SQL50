-- 595. Big Countries
-- 2nd practice: 2025/5/26

SELECT name, population, area
FROM World
WHERE area >= '3000000' or population >= '25000000'

-- notes: very easy
