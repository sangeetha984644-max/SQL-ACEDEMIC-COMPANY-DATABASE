USE COLLEGE_DB;
-- 1. Display the total number of students.
SELECT COUNT(*) AS total_students from students;
-- 2. Display the number of students whose percentage is available.
select * from students where percentage is not null;
-- 3. Display the highest, lowest and average percentage of all students, with the headings
-- Highest, Lowest and Average.
select max(percentage)as 'Highest',min(percentage)as' Lowest', avg(percentage)as 'Average' from students;
-- 4. Display the total number of courses and the total credits in the courses table.
select count(course_id) as 'total_no_of_courses', count(credits) as 'total_no_of_credit' from courses;
-- 5. Display the highest and lowest marks in the enrollments table.
select	max(marks)as ' highest' ,min(marks) as 'lowest' from enrollments;
-- 6. Display the number of students in each department.
select  department,count(*) as 'department' from students group by department; 
-- 7. Display the number of students from each city.
select  city,count(*) as 'no_of_students' from students group by city; 
-- 8. Display the average percentage of each department.
select department,avg(percentage) as 'percentage' from students group by department; 
-- 9. Display the number of students admitted in each year, with the latest year first.
select admission_year ,count(*) as 'no_of_students' from students group by admission_year order by admission_year desc; 
-- 10. Display the number of male and female students in each department.
select department,gender ,count(*) as 'total_no_of_students' from students group by department,gender; 
-- 11. Display the average marks of each course in the enrollments table, showing the course ID.
select course_id,avg(marks) as 'avg_marks' from enrollments group by course_id;
-- 12. Display the student ID and the number of courses for students who are enrolled in at least 2
-- courses.
select * from enrollments;
SELECT student_id,count(*) from enrollments group by student_id having count(*)>=2;
-- 13. Display the cities that have at least 6 students.
-- 14. Display the departments whose average percentage is above 70.
-- 15. For students admitted in 2022 or later, display the departments whose average percentage
-- is 75 or more.
-- 16. Among enrollments with marks of 80 or more, display the course IDs that have at least 3
-- such enrollments.