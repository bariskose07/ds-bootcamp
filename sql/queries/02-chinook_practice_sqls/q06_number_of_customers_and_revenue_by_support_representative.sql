-- Number of customers and revenue by support representative
SELECT Employee.EmployeeId,employee.LastName, Employee.FirstName, SupportRepId, 
SUM(Total) AS Total_Sales,
COUNT(DISTINCT Customer.CustomerId) AS Total_Customers
FROM customer
INNER JOIN employee ON employee.EmployeeId=Customer.SupportRepId
INNER JOIN Invoice ON Invoice.CustomerId=Customer.CustomerId
GROUP BY 1