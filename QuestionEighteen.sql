--Provide a query that shows total sales made by each sales agent.

--NEED Employee, Customer, and Invoice Tables
--Fields Needed:
--Employee.EmployeeId == Customer.SupportRepId
--Invoice.CustomerId == Customer.CustomerId
--Invoice.Total  GROUP BY Customer.SupportRepId

-- SELECT * FROM Employee WHERE LastName = 'Peacock'
--SELECT SUM(Total) FROM Invoice WHERE CustomerId 
   --IN (SELECT CustomerId FROM Customer WHERE Customer.SupportRepId == '3')

SELECT Employee.LastName, SUM(Total) 
   FROM Customer JOIN Invoice 
   ON Customer.CustomerId == Invoice.CustomerId 
   JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId 
   --WHERE Employee.EmployeeId == '3'
   GROUP BY Employee.LastName



