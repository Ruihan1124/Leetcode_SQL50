-- 1683. Invalid Tweets
-- SELECT
-- 2025/5/29 2nd practice

SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content) > 15

-- Notes:
-- 1. LENGTH(str) --> return number of bytes
-- 2. CHAR_LENGTH(str) --> return number of characters

-- 3. UPPER(str) / LOWER(str) --> UPPER('abc') --> 'ABC'
-- 4. SUBSTRING(str, start, length) --> SUBSTRING('hello', 2, 3) --> 'ell'
-- 5. CONCAT(str1, str2, …) --> CONCAT('A', 'B') --> 'AB'
-- 6. REPLACE(str, from, to) --> REPLACE('a_b_c', '_', '-') --> 'a-b-c'
-- 7. INSTR(str, substr) --> INSTR('hello', 'e') --> 2
