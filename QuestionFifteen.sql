--Provide a query that shows the total number of tracks in 
--each playlist. The Playlist name should be included on the 
--resulant table.

SELECT  Playlist.PlaylistId, Playlist.Name, TrackId , 
	COUNT(*) FROM PlaylistTrack JOIN Playlist 
	ON Playlist.PlaylistId == PlaylistTrack.PlaylistId 
	GROUP BY Playlist.Name