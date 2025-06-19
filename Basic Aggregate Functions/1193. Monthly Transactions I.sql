-- 1193. Monthly Transactions I
-- 2nd practice, 2025/06/19

SELECT 
DATE_FORMAT(trans_date, '%Y-%m') AS month, -- notes 1.
country,
COUNT(amount) AS trans_count,
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count, -- notes 2.
SUM(amount) AS trans_total_amount,
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount -- notes 3.
FROM Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country --notes 4.

-- Notes:
-- 1. About month, have easy method :LEFT(trans_date, 7) AS month, means extract the first 7 characters from a date
-- 2. SUM(state = 'approved') AS approved_count,
-- 3. SUM(IF(state = 'approved',amount,0)) AS approved_total_amount
-- 4. GROUP BY 1, 2, new table first 2 columns: month and country
-- 5. 
| Format | Meaning                | Example |
| ------ | ---------------------- | ------- |
| `%Y`   | 4-digit year           | `2025`  |
| `%y`   | 2-digit year           | `25`    |
| `%m`   | 2-digit month (01–12)  | `06`    |
| `%d`   | 2-digit day (01–31)    | `19`    |
| `%M`   | Full month name        | `June`  |
| `%b`   | Abbreviated month name | `Jun`   |


-- Mistake: CASE WHEN XX THEN 1 ELSE 0 END, forget END.
