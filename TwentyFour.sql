--Provide a query that shows the most purchased track of 2013.

SELECT  * FROM InvoiceLine JOIN Track
          ON InvoiceLine.TrackId ==Track.TrackId JOIN Invoice 
          ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
          WHERE InvoiceDate LIKE '2013%'

SELECT  * FROM InvoiceLine JOIN Track
          ON InvoiceLine.TrackId ==Track.TrackId JOIN Invoice 
          ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
          WHERE InvoiceDate LIKE '2013%' 
          GROUP BY Track.Name ORDER BY Track.Name DESC LIMIT 1
