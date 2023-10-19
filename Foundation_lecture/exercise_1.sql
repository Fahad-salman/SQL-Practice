-- Exercise 1
-- We want to add new column by using ALTER TABLE,
-- The column is age int(4) and not null let column be after email. 


-- Try your best and if you don't have any idea google it then see the selution .


-- ---------------Solution-----------------  --

USE course; 

ALTER TABLE users
ADD age INT(4) NOT NULL AFTER email;

-- to let the new column be after email just use -> AFTER COLUMN_YOU_WANT .

-- ---------------Solution-----------------  --
