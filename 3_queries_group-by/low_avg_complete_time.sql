SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

-- doesn't make sense for this question --
-- reason : can't compare student's total average assignment with average an assignment time.  Different base. 
-- this solution from compass note solution -- 