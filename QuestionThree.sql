--Provide a query showing the invoices of customers who 
--are from Brazil. The resultant table should show the 
--customer's full name, Invoice ID, Date of the invoice 
--and billing country.

SELECT LastName,FirstName, InvoiceId, InvoiceDate, BillingCountry FROM 
	Customer  JOIN Invoice ON Invoice.CustomerId == Customer.CustomerId  
		WHERE Country == 'Brazil'
		