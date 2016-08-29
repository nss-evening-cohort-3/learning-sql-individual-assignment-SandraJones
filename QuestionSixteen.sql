//Provide a query that shows all the Tracks, but displays 
//no IDs. The resultant table should include the Album name, 
//Media type and Genre.

SELECT Track.Name, Album.Title, Track.MediaTypeId, Track.GenreId 
FROM Track JOIN Album ON Track.AlbumId == Album.AlbumId

SELECT  T.Name,A.Title,M.Name,G.Name 
FROM Track T
JOIN Album A ON T.AlbumId == A.AlbumId 
JOIN Mediatype M ON M.MediaTypeId == T.MediaTypeId 
JOIN Genre G ON T.GenreId == G.GenreId

