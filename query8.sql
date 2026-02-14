-- Query 8 (BONUS): List all tracks that are NOT in one of the top 5 genres with longer duration
-- Top 5 genres are determined by the sum of all track durations in each genre

SELECT 
    t.TrackId, 
    t.Name, 
    g.Name AS Genre
FROM tracks t
JOIN genres g ON t.GenreId = g.GenreId
WHERE t.GenreId NOT IN (
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    ORDER BY SUM(Milliseconds) DESC
    LIMIT 5
);
