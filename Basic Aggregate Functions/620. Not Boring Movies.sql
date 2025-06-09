--620. Not Boring Movies
--2nd practice, 2025/6/9, very easy

SELECT id, movie, description, rating
FROM Cinema
WHERE MOD(id, 2) != 0  AND description != 'boring'
ORDER BY rating DESC

-- Notes: 
-- 1. MOD(a, b) gives the remainder of a ÷ b. 
-- 2. MOD(id, 2) != 0， MOD(id, 2) <> 0, This returns rows where the id is odd.
