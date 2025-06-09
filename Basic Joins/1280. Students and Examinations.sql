-- 1280. Students and Examinations
-- Basic Join, easy level
-- 2nd practice: 2025/5/31

SELECT S.student_id, S.student_name, U.subject_name, COUNT(E.subject_name) AS attended_exams
FROM Students S
CROSS JOIN Subjects U 
LEFT JOIN Examinations E ON S.student_id = E.student_id AND U.subject_name = E.subject_name
GROUP BY S.student_id, U.subject_name
ORDER BY S.student_id, U.subject_name

-- Notes: 
-- 1. Use CROSS JOIN to generate all student-subject combinations, since some students may not have attended certain exams.
-- 2. Use LEFT JOIN with two conditions: both student_id and subject_name must match to count attendance correctly.
-- 3. Sort by student_id and subject_name as required by the output format.
-- 4. Always use table aliases (e.g., S.student_name) to avoid ambiguity and improve clarity, especially in multi-table joins.
