SELECT
   Track.Name AS Track_Name,
   SUM(Quantity) AS Total_Quantity_Sold

FROM Track
INNER JOIN InvoiceLine
   ON Track.TrackId=InvoiceLine.TrackId

GROUP BY Track.TrackId, Track_Name
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;