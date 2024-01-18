

-- What we want to do ?
-- We want to see how many time customers canceled their order .
-- If we ask our self , is this helpful? 
-- The answer is : Yes!
-- It will help us alot and we can see why they canceled is there's any problem or else 
-- And then fix this problem .

-- Now let's get started.

use classicmodels;

-- First thing we need to know is there any canceled order ?
-- Think how can you do it before you see the solution .

SELECT orderNumber, customerNumber , status FROM ORDERS
-- WHERE status not in ('Shipped','Cancelled','Resolved')
WHERE status = ('Cancelled')
ORDER BY orderDate;

-- Then after we see the result now we can go to the next query.

-- We will use Common Table Expression (CTE) , if you never use CTE just google it and see how it works.
-- I use it just for practice .

WITH Cancelled_Order AS (
SELECT
orderNumber,
customerNumber,
count(customerNumber) AS `HOW MANY TIME CANCELL` ,
status

FROM ORDERS
-- WHERE status not in ('Shipped','Cancelled','Resolved')
WHERE status = ('Cancelled')

GROUP BY orderNumber,customerNumber
ORDER BY orderDate
)

SELECT customerNumber , `HOW MANY TIME CANCELL` FROM Cancelled_Order;