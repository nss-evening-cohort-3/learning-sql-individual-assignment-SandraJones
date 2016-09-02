--Provide a query that shows the invoices associated 
--with each sales agent. The resultant table should 
--include the Sales Agent's full name.

SELECT InvoiceId, agentname FROM
(SELECT I.InvoiceId, E.FirstName ||' '|| E.LastName AS agentname,
              E.LastName
  FROM CUSTOMER C JOIN INVOICE I 
       ON C.CustomerId == I.CustomerId
     JOIN Employee E 
       ON E.EmployeeId == C.SupportRepId 
 WHERE e.Title =='Sales Support Agent' ORDER BY E.LastName)
