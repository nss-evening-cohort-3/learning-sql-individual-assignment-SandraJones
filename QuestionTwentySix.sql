--Provide a query that shows the top 3 best selling artists.

SELECT  * FROM InvoiceLine JOIN Track
          ON InvoiceLine.TrackId ==Track.TrackId JOIN Invoice 
          ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
          GROUP BY Track.Composer ORDER BY Track.Composer DESC LIMIT 3

SELECT Artist.Name, SUM(Invoice.Total) FROM Invoice 
   JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
   JOIN Track ON InvoiceLine.TrackId == Track.TrackId
   JOIN Album ON Album.AlbumId == Track.AlbumId
   JOIN Artist ON Artist.ArtistId == Album.ArtistId
  GROUP BY Artist.Name 
  ORDER BY SUM(Invoice.Total) DESC LIMIT 3     