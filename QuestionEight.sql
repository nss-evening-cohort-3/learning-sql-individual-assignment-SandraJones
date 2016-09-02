--Provide a query that shows the Invoice Total, 
--Customer name, Country and Sale Agent name for 
--all invoices and customers.


SELECT * FROM
(SELECT InvoiceId, agentname FROM
(SELECT I.InvoiceId, E.FirstName ||' '|| E.LastName AS agentname,
              E.LastName
  FROM CUSTOMER C JOIN INVOICE I 
       ON C.CustomerId == I.CustomerId
     JOIN Employee E 
       ON E.EmployeeId == C.SupportRepId 
 WHERE e.Title =='Sales Support Agent' ORDER BY E.LastName)) AS AI


SELECT FirstName, LastName, Total, agentname,BillingCountry 
 FROM
     (SELECT * FROM
           (SELECT InvoiceId, agentname,firstname,lastname,total,billingcountry
                FROM
                   (SELECT I.InvoiceId, 
                       E.FirstName ||' '|| E.LastName AS agentname,
                       E.LastName,
                       C.FirstName, 
                       C.LastName,
                       I.Total,
                       I.BillingCountry
                 FROM CUSTOMER C JOIN INVOICE I 
                  ON C.CustomerId == I.CustomerId
                  JOIN Employee E 
                  ON E.EmployeeId == C.SupportRepId 
                 WHERE e.Title =='Sales Support Agent' 
                 ORDER BY E.LastName)
            ) AS AI
         )


