-- Customers' total spendings and avg order amount
SELECT 
    Customer.CustomerId, 
    FirstName, 
    LastName, 
    SUM(UnitPrice*Quantity) AS total_spendings, 
    AVG(UnitPrice*Quantity) AS avg_order_amount
FROM Invoice
INNER JOIN Customer
    ON Customer.CustomerId=Invoice.CustomerId
INNER JOIN InvoiceLine il
    ON Invoice.InvoiceId=il.InvoiceId
GROUP BY 1