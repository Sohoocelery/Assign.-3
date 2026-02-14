-- Query 2: Insert at least 10 videos, respecting the problem rules
-- Each insert must reference an existing TrackId from the tracks table

INSERT INTO music_videos (TrackId, VideoDirector) VALUES
(1, 'Spike Jonze'),
(5, 'Michel Gondry'),
(10, 'David Fincher'),
(15, 'Hype Williams'),
(20, 'Mark Romanek'),
(25, 'Chris Cunningham'),
(30, 'Anton Corbijn'),
(35, 'Samuel Bayer'),
(40, 'Jake Nava'),
(45, 'Joseph Kahn');
