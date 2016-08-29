//Provide a query that shows the total number of tracks in 
//each playlist. The Playlist name should be include on the 
//resulant table.

SELECT  PlaylistId, TrackId , COUNT(*) FROM PlaylistTrack GROUP BY PlaylistId