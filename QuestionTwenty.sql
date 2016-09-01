--Which sales agent made the most in sales in 2010?

SELECT * FROM 
(SELECT Employee.LastName, SUM(Total) AS SumTotal 
   FROM Customer JOIN Invoice 
   ON Customer.CustomerId == Invoice.CustomerId 
   JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId 
   WHERE InvoiceDate  LIKE "2010%"
   GROUP BY Employee.LastName ORDER BY SumTotal DESC) LIMIT 1