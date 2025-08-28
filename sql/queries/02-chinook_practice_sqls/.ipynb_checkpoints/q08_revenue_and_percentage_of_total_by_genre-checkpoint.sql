-- Revenue and percentage of total by genre
WITH genre_rev AS (
SELECT g.GenreId AS Id, g.Name AS Genre, 
ROUND(SUM(i.Total), 0) AS revenue
FROM Invoice i
FULL JOIN InvoiceLine il  ON il.InvoiceId = i.InvoiceId
FULL JOIN Track t         ON t.TrackId = il.TrackId
FULL JOIN Genre g         ON g.GenreId = t.GenreId
GROUP BY g.GenreId
)
SELECT *, ROUND(100 * revenue / (SELECT SUM(revenue) FROM genre_rev), 2) AS percentage
FROM genre_rev