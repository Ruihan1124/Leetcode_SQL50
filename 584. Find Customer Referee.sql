-- 584. Find Customer Referee
-- second time practice 2025/5/26

SELECT name
FROM Customer
WHERE referee_id != '2'
OR referee_id is null

-- notes: correct classification
