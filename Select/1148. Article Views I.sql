-- 1148. Article Views I
-- SELECT
-- 2025/5/29 2nd practice

SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC

--Notes: very easy, remember the dulplicates and order
