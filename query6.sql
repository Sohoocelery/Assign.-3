-- Query 6: Creative addition - GROUP BY query using at least two tables
-- This query counts how many music videos each artist has
-- Results are ordered by the number of videos (most videos first)

SELECT 
    ar.Name AS ArtistName,
    COUNT(mv.TrackId) AS NumberOfVideos
FROM music_videos mv
JOIN tracks t ON mv.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY NumberOfVideos DESC;
