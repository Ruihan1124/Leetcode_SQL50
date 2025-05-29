-- 1661. Average Time of Process per Machine
-- 2nd practice 2025/5/29
-- Basic Join, easy level

SELECT s.machine_id, ROUND(AVG(e.timestamp - s.timestamp),3) AS processing_time
FROM Activity s JOIN Activity e
ON s.machine_id = e.machine_id AND s.process_id = e.process_id
AND s.activity_type = 'start' AND e.activity_type = 'end'
GROUP BY s.machine_id

-- Notes: machine_id occur in multiple tables, need to clarify which table's machine_id.
-- ideas: For each machine, find the difference between the start and end time of each process_id.
-- ideas: Use inner join to pair start and end. Only keep the matching rows.
