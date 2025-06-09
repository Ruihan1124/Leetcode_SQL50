-- 584. Find Customer Referee
-- 2nd practice 2025/5/26
-- SELECT

-- Method 1:
SELECT name
FROM Customer
WHERE referee_id != 2
OR referee_id is null

-- Method 2:

SELECT name
FROM Customer
WHERE referee_id <> '2'
OR referee_id is null

-- notes: 
-- 1. correct classification: not referered by 2, might be null.
-- 2. two kinds of 'not equal to' in SQL.  <> more common. != only in MySQL and PostgreSQL, not in Oracle.
-- 3. since referer_id are int, both 2 and '2' is ok. If referer_id is varchar, only '2' is ok.
