--Provide a query that shows the total sales 
--per country. Which country's customers spent the most?

SELECT  *  FROM  
	(SELECT BillingCountry,   SUM(Total) 
		FROM Invoice GROUP BY BillingCountry ) 
		ORDER BY 2 DESC 
