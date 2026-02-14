-- Query 5: Creative addition - JOIN query using at least two tables
-- This query joins music_videos with tracks, albums, and artists
-- to show comprehensive information about each music video

SELECT 
    t.Name AS TrackName,
    al.Title AS AlbumTitle,
    ar.Name AS ArtistName,
    mv.VideoDirector
FROM music_videos mv
JOIN tracks t ON mv.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId;
