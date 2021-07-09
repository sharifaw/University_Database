use university;

-- 	1. get a list of all students whose country_id is between 1 and 4
--     (only show registration number and name).
SELECT `registration_number‏`,name from students
WHERE country_id BETWEEN 1 and 4;

-- 2. get the teacher who has a certain employment_number
--    (e.g. 2021-50-32) (only show employment number and name).
SELECT employment_number ,name from teachers
where employment_number = '202145';

-- 	3. get a list of all courses whose title contains a certain word
--     (e.g. computer).
SELECT * from courses 
where title like '%Javascript$';

-- 4. get the number of students who come from country_id = 3
--    (hint: use group by and aggregate functions).
SELECT COUNT(*) from students s 
where country_id = 3;

-- 	5. get the max grade for a certain student 
--     (e.g. student_id = 3, hint: use group by and aggregate functions).
SELECT max(grade) from student_courses
WHERE student_id = 1;

--   6. get the list of courses which a certain student has registered in
--      (e.g. for student_id = 3, hint: use joins).
SELECT courses.title from student_courses 
join courses 
on student_courses.course_id = courses.id
where student_id = 1;

--    7. get a list of courses that a certain teacher teaches 
--       (e.g. teacher_id = 3, show all course info, use joins).
SELECT * from courses 
WHERE  teacher_id =2;

--  Extra Tasks

-- 1. get the list of country names and the number of students from each one.
SELECT count(students.country_id) as students_number , countries.name  
from students
right join countries
on students.country_id = countries.id 
group by countries.name;

-- 2. get a list of all students and for each
--    student get the number of courses they are registered in.
SELECT students.name, count(student_courses.student_id)
from student_courses 
right join students
on students.id = student_courses.student_id
group by students.name;

-- 3. get a list of all courses that have 5 students or more registered in them.
SELECT courses.id as course_id , 
count(student_courses.course_id) as Registered_Number 
from courses
right join student_courses
on courses.id = student_courses.course_id
group by courses.id
HAVING count(student_courses.course_id) > 1;

-- 4.for each course, get the course number, course name,
--   and get the student number, student name and grade of students 
--   in that course who received a grade of 90 or above.
select courses.course_number, courses.title, students.`registration_number‏`, students.name, student_courses.grade from student_courses 
join courses
on student_courses.course_id = courses.id
join students
on student_courses.student_id = students.id
where grade >= 90;