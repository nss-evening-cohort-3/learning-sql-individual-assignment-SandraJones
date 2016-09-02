--Provide a query that shows all Invoices but 
--includes the # of invoice line items.

SELECT InvoiceId, InvoiceLineId, 
COUNT (*) FROM InvoiceLine GROUP BY InvoiceId

