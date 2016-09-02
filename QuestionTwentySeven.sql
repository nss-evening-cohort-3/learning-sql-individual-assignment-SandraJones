--Provide a query that shows the most purchased Media Type.


SELECT mt.Name, ROUND(SUM(I.Total),2)
 FROM MediaType mt  JOIN Track T
   ON mt.MediaTypeId == T.MediaTypeId
   JOIN InvoiceLine il ON il.TrackId ==  T.TrackId
   JOIN Invoice I ON I.InvoiceId == il.InvoiceId
   GROUP BY T.MediaTypeId
   ORDER BY 2 DESC
