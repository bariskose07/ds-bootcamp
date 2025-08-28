-- Number of unique customers who purchased rock genre
SELECT COUNT(DISTINCT CustomerId) AS Total_Customers_Rock_Genre
FROM Track
INNER JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE GenreId=1