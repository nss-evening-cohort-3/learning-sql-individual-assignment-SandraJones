--Provide a query that shows the # of invoices per country. HINT: GROUP BY

 SELECT  InvoiceId, BillingCountry, COUNT(*) FROM 
 Invoice GROUP BY BillingCountry  ORDER BY BillingCountry