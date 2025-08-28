-- Monthly revenue trend (SQLite)
SELECT strftime('%Y-%m-01', InvoiceDate) AS month,
       SUM(Total) AS revenue
FROM Invoice
GROUP BY 1
ORDER BY 1;