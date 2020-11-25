SELECT count(assistance_requests.*) as total_assistance , students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name LIKE 'Elliot Dickinson'
GROUP BY students.name;
