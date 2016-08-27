SELECT LastName,FirstName, InvoiceId, InvoiceDate FROM 
	Customer  JOIN Invoice ON Invoice.CustomerId == Customer.CustomerId  
		WHERE Country == 'Brazil'