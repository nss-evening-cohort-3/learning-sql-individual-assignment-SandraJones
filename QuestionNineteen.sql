--Which sales agent made the most in sales in 2009? HINT: MAX

SELECT * FROM 
(SELECT Employee.LastName, SUM(Total) AS SumTotal 
   FROM Customer JOIN Invoice 
   ON Customer.CustomerId == Invoice.CustomerId 
   JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId 
   WHERE InvoiceDate  LIKE "2009%"
   GROUP BY Employee.LastName ORDER BY SumTotal DESC) LIMIT 1
