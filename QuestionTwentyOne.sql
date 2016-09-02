--Which sales agent made the most in sales over all?

SELECT Employee.LastName, SUM(Total) 
   FROM Customer JOIN Invoice 
   ON Customer.CustomerId == Invoice.CustomerId 
   JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId 
   --WHERE Employee.EmployeeId == '3'
   GROUP BY Employee.LastName ORDER BY SUM(Total) DESC LIMIT 1



