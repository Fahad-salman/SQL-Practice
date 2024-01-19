-- What we want to do ?
-- We want to see how many orders are completed and then see the top customer with completed orders
-- Why ? Because this will improve the quality of our services,
-- and some benefits or offers can be provided to the customer.
-- Good customers can also be identified and their information delivered to those interested.

-- Now let's get started.

-- Think how can you do it before you see the solution .


-- As always see the table you have then understand your data .
USE classicmodels;

SELECT * FROM payments;

-- FROM This Table we can figure out how many orders 

-- Step 2 Now let's create the query that we want 

SELECT
customerNumber,
count(customerNumber) AS Customer_complete_order
FROM payments 
WHERE checkNumber IS NOT NULL -- This line to check the status of the order.
GROUP BY customerNumber
ORDER BY customer_complete_order DESC;