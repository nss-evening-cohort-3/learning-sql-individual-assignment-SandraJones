--Provide a query that shows the # of customers 
--assigned to each sales agent.

SELECT * FROM Customer JOIN Employee 
ON Customer.SupportRepId == Employee.EmployeeId 


SELECT ec.CustomerId, ec.FirstName, ec.LastName  
    FROM  
    ( SELECT Employee.FirstName, Employee.LastName, Customer.CustomerId 
        FROM Customer JOIN Employee ON Customer.SupportRepId == Employee.EmployeeId) 
        AS ec



        NOT YET WORKING!!