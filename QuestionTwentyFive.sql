--Provide a query that shows the top 5 most purchased tracks over all.

SELECT  * FROM InvoiceLine JOIN Track
          ON InvoiceLine.TrackId ==Track.TrackId JOIN Invoice 
          ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
          GROUP BY Track.Name ORDER BY Track.Name DESC LIMIT 5
