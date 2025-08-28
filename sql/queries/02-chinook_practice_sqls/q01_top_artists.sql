-- Top 5 artists by revenue
SELECT ar.Name AS artist,
       SUM(il.UnitPrice * il.Quantity) AS revenue
FROM InvoiceLine il
JOIN Track t   ON t.TrackId = il.TrackId
JOIN Album al  ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
GROUP BY 1
ORDER BY revenue DESC
LIMIT 5;