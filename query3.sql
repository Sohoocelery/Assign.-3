-- Query 3: Insert another video for the track "Voodoo"
-- This query finds the TrackId by the track name, so we don't need to know the TrackId in advance

INSERT INTO music_videos (TrackId, VideoDirector)
SELECT TrackId, 'Dave Meyers'
FROM tracks
WHERE Name = 'Voodoo';
