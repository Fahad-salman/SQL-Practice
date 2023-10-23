-- Exercise 9
-- Create query that query will return users if country Saudi Arabia or Sudan using (or,and,between) .

-- Try your best and if you don't have any idea google it then see the selution .


-- ---------------Solution-----------------  --

USE course; 

-- here's two ways .
SELECT * FROM users WHERE `country` IN ('Saudi Arabia','Sudan');
SELECT * FROM users WHERE `country` = 'Saudi Arabia' OR `country` = 'Sudan' ;

-- ---------------Solution-----------------  --


