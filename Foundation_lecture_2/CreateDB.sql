-- WE want to create our DB and table 

CREATE DATABASE school;

USE school;

CREATE TABLE student_marks(
    id int auto_increment primary key not null,
    student_name varchar(255),
    mark DECIMAL(4,1),
    supject varchar(255)
);

-- Now we need to insert values try to insert them into student_marks we need same student twice with different supjects also different mark .

-- Here's the code 

INSERT INTO student_marks (student_name, mark, supject)
VALUES
    ('Alice Johnson', 95.5, 'Math'),
    ('Bob Smith', 87.0, 'English'),
    ('Catherine Davis', 75.5, 'Science'),
    ('David Brown', 60.5, 'History'),
    ('Emma Wilson', 42.0, 'Geography'),
    ('Frank White', 78.5, 'Art'),
    ('Grace Lee', 89.5, 'Physics'),
    ('Henry Turner', 68.0, 'Chemistry'),
    
    ('Alice Johnson', 95.5, 'Geography'),
    ('Bob Smith', 87.0, 'Science'),
    ('Catherine Davis', 75.5, 'English'),
    ('David Brown', 60.5, 'History'),
    ('Emma Wilson', 42.0, 'Art'),
    ('Frank White', 78.5, 'Math'),
    ('Grace Lee', 89.5, 'Art'),
    ('Henry Turner', 68.0, 'History');


