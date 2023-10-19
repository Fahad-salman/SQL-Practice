-- Exercise 4
-- Create query that query will return age between 21 and 39, and email start with S or F .

-- Try your best and if you don't have any idea google it then see the selution .


-- ---------------Solution-----------------  --

USE course; 

SELECT * FROM users WHERE age BETWEEN 21 AND 38 AND email LIKE "a%" OR email LIKE "f%";

-- ---------------Solution-----------------  --


