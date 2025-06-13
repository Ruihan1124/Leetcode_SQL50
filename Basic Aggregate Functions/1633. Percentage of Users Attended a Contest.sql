--1633. Percentage of Users Attended a Contest
-- 2nd, 2025/6/13

SELECT contest_id,
ROUND(COUNT(contest_id)*100/(SELECT COUNT(*) FROM Users),2) AS percentage
FROM Register LEFT JOIN Users USING(user_id)
GROUP BY contest_id 
ORDER BY percentage DESC, contest_id ASC

-- Notes:
-- 1st mistake: COUNT(SELECT (*) FROM Users)
-- COUNT() is an aggregate function used to count rows
-- SELECT ... is a subquery and must be written independently and cannot be put directly into COUNT()
-- can not use count(1), since proportion use to calculate how many percent student participate in the contest
