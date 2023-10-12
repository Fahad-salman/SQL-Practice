-- We are going to Create a new table .
-- In this table we want to see how many records we have .
-- Like how many employees ?
-- How many Customer ?
-- How many Products ?

-- Now let's get started.

-- First thing Create a new table 


USE classicmodels;

CREATE TABLE stats(
totalCustomer INT ,
totalEmployee INT
);

-- And then we need to insert what we have mentioned above.

INSERT INTO stats (totalCustomer,totalEmployee) 
VALUES (
	   (SELECT COUNT(*) FROM customers),
       (SELECT COUNT(*) FROM employees)
);

-- Now let's see the result

SELECT * FROM stats;

