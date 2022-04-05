SELECT students.name as student, avg(assignment_submissions.duration) as avg_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg_assignment_duration DESC;