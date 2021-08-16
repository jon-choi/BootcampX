SELECT students.name as STUDENT, COUNT(assignment_submissions) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING COUNT(assignment_submissions) < 100
LIMIT 20;