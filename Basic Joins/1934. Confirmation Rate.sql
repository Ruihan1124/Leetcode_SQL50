-- 1934. Confirmation Rate
-- 2nd practice 2025/6/9

SELECT user_id, ROUND((IFNULL(SUM(c.action = 'confirmed'),0)/COUNT(1)),2) AS confirmation_rate
FROM Signups s LEFT JOIN Confirmations c USING(user_id)
GROUP BY user_id

--Notes:
-- 1. IFNULL outside SUM is used to ensure that users who never appeared in the Confirmations table still get a result of 0 instead of NULL for their confirmation count.
-- 2. LEFT JOIN is a horizontal expansion — even if a user appears only once in the Signups table, if they have multiple matching rows in the Confirmations table, all matches will be included as separate rows. For example：
  
user_id | time_stamp
--------|---------------------
3       | 2020-03-21 10:16:13

user_id | time_stamp          | action
--------|---------------------|---------
3       | 2021-01-06 03:30:46 | timeout
3       | 2021-07-14 14:00:00 | timeout

user_id | s.time_stamp        | c.time_stamp          | action
--------|---------------------|------------------------|---------
3       | 2020-03-21 10:16:13 | 2021-01-06 03:30:46    | timeout
3       | 2020-03-21 10:16:13 | 2021-07-14 14:00:00    | timeout

-- 3. COUNT(1) counts all non-NULL rows (just like COUNT(*) in this context), because 1 is a constant and never null. COUNT(column) only counts non-null values in that specific column.
-- 4. GROUP BY 1 means group by the first selected column in your SELECT clause.
