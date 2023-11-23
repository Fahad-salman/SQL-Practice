-- What we want to do ? 
-- We want to calculate the student mark .
-- For example you have 2 subjects maybe more and also you have different marks 
-- Math you got 80 , Science 90
-- we need column that holde your marks call it Total_mark , affter that i want simple condition Total_mark have to be more than 120.

-- try your best. Now you good to go good luck.

USE school;

-- Down below, you will find calculation methods .

SELECT student_name , sum(mark) as Total_mark FROM student_marks group by student_name having Total_mark > 120;