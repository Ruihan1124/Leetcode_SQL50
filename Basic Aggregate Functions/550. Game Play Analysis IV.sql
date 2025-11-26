-- 3rd practice: 2025/11/26, easy

SELECT
(
    ROUND(
        COUNT(DISTINCT a.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity)
        ,2)
) AS fraction
FROM Activity a
JOIN(
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) f
ON a.player_id = f.player_id
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY)

-- Rough idea:
-- 1.find each player's first login date 
-- 2.check whether have login on second day
- -3.do the calculations

-- key points:
-- JOIN (subquery) = Create a temporary virtual table and then join it with the original table to filter and match specific data.
-- JOIN(子查询) = 临时创建一张虚拟表，再和原表 JOIN，用来过滤、匹配特定数据。
-- JOIN 后的结果只有一张表，但这张表的每一列仍然带着“来自 a 表”或“来自 f 表”的名字，所以必须写 a.player_id
