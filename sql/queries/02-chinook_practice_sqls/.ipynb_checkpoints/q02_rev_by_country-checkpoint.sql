-- Revenue and order count by country
SELECT BillingCountry AS country,
       COUNT(DISTINCT InvoiceId) AS orders,
       SUM(Total) AS revenue
FROM Invoice
GROUP BY 1
ORDER BY revenue DESC;