SELECT * FROM Customer JOIN Invoice ON 	Customer.CustomerId == Invoice.CustomerId

SELECT Customer.CustomerId, InvoiceId, SupportRepId FROM Customer JOIN Invoice  ON Customer.CustomerId == Invoice.CustomerId

	SELECT I.InvoiceId, E.FirstName, E.LastName FROM CUSTOMER C JOIN INVOICE I ON C.CustomerId == I.CustomerId JOIN Employee E ON E.EmployeeId == C.SupportRepId WHERE Title == 'Sales Support Agent' 

	SELECT I.InvoiceId, E.FirstName ||' '|| E.LastName FROM CUSTOMER C JOIN INVOICE I ON C.CustomerId == I.CustomerId JOIN //Employee E ON E.EmployeeId == C.SupportRepId WHERE Title == 'Sales Support Agent' ORDER BY 2


SELECT I.InvoiceId, E.FirstName ||' '|| E.LastName AS agentname,
              E.LastName
  FROM CUSTOMER C JOIN INVOICE I 
       ON C.CustomerId == I.CustomerId
     JOIN Employee E 
       ON E.EmployeeId == C.SupportRepId 
 WHERE e.Title =='Sales Support Agent' ORDER BY E.LastName


SELECT InvoiceId, agentname FROM
(SELECT I.InvoiceId, E.FirstName ||' '|| E.LastName AS agentname,
              E.LastName
  FROM CUSTOMER C JOIN INVOICE I 
       ON C.CustomerId == I.CustomerId
     JOIN Employee E 
       ON E.EmployeeId == C.SupportRepId 
 WHERE e.Title =='Sales Support Agent' ORDER BY E.LastName)
