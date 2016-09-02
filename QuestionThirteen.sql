--Provide a query that includes the purchased track 
--name AND artist name with each invoice line item.

SELECT Track.Name,Track.Composer,InvoiceLine.InvoiceLineId 
FROM Track JOIN InvoiceLine ON Track.TrackId == InvoiceLine.TrackId