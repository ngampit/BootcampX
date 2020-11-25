SELECT cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM students 
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY AVG(assistance_requests.completed_at - assistance_requests.started_at) DESC
LIMIT 1;