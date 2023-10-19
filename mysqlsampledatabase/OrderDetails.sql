# Redistributions of source code must retain the above copyright.

-- First thing what should we do ?
-- Understand the data structure, and then you can manipulate the data.

-- Now let's get started.

use classicmodels;

-- We need to know the ordered we have in our table, and then we need to take orderNumber 
-- to specify the order .
SELECT * FROM orders;


-- After we have orderNumber, now we want to manipulate the data .
-- Needs : Sele Total Price , Tax 15% , Total Price + Tax ,
-- Quantity Ordered , Stock Before Order , Current Stock , 
-- Buy Price , Price For Each , Profit For Each , Profit Percentage .
-- And we want to see the highest ordered product .
-- Down below, you will find calculation methods .

select  products.productName,
        -- Sele Total Price = Quantity * selling price .
		quantityOrdered*priceEach as 'Sele Total Price' ,
        -- Tax = Quantity * price Each * 0.15 .
        quantityOrdered*priceEach*0.15 as 'Tax 15%',
		-- Total price with Tax = Total price * 0.15 + Total Price .
		quantityOrdered*priceEach*0.15 + quantityOrdered*priceEach as 'Total Price + Tax' ,
		orderdetails.quantityOrdered as 'Quantity Ordered',
		products.quantityInStock as 'Stock Before Order',
        -- Current Stock = Quantity Before Order - Quantity Ordered .
		products.quantityInStock-orderdetails.quantityOrdered as 'Current Stock',
        products.buyPrice as 'Buy Price',
        orderdetails.priceEach as 'Price For Each',
        -- Profit For Each = Cost Price - Sale Price .
        orderdetails.priceEach-products.buyPrice as 'Profit For Each',
        -- Profit percentage = (Profit/Cost Price) × 100 .
        (orderdetails.priceEach-products.buyPrice)/(products.buyPrice)*100 as 'Profit Percentage'
from orderdetails
right join products on products.productCode=orderdetails.productCode
where orderNumber=10103
order by orderdetails.quantityOrdered desc;