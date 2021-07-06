use university;

INSERT into countries (name) 
    values ("jordan"),("syria"),
           ("iraq"),("saudi arabia"),("qatar"),("egypt");

INSERT into courses (course_number,title,describtion,credit_hours,teacher_id)
    values ("CS101","HTML/CSS","web dev",1,1),
            ("CS102","Javascript","Computer Language",1,2);
            ("CS103","Calculus","Math",3,2);

INSERT into students (registration_number‏,name,country_id) 
    values ("2021-435","Faisal",1),
            ("2020-421","Hatem",2),
            ("2021-351","Fatema",3),
            ("2019-254","Hazem",6);

INSERT into semesters (name)
    values ("fall"),("summer"),("spring");

INSERT into student_courses (student_id,course_id,year,semester_id,grade) 
    values (1,1,2021,1,null),
            (1,2,2021,2,null),
            (2,2,2021,3,null),
            (4,3,2019,3,null);

INSERT into teachers (employment_number,name)
    values ("202145","Ghadeer"),
            ("202012","Hamed"),
            ("201913","Salah");
            
INSERT into courses (course_number,title,describtion,credit_hours,teacher_id)
	values ("CS200","Javascript","computer language chapter 2",1,3);
