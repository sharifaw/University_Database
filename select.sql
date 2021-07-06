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
SELECT count(*) from student_courses
where student_id = 1;

--    7. get a list of courses that a certain teacher teaches 
--       (e.g. teacher_id = 3, show all course info, use joins).
SELECT * from teachers 
join courses
on teachers.id = courses.teacher_id 
where teachers.id = 2;