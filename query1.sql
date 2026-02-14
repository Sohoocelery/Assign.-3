-- Query 1: Create a new Table Music Video
-- Music Video is a class of type Track (generalization) that adds the attribute Video director
-- A music video is a track. There cannot be a video without a track, 
-- and each track can have either no video or just one.

CREATE TABLE music_videos (
    TrackId INTEGER PRIMARY KEY,
    VideoDirector NVARCHAR(120) NOT NULL,
    FOREIGN KEY (TrackId) REFERENCES tracks(TrackId)
);
