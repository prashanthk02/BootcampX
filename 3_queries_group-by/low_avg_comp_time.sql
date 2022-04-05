SELECT students.name as student, avg(assignment_submissions.duration) as avg_assignment_duration, avg(assignments.duration) as avg_estimated_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_duration;