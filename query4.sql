-- Query 4: List all tracks that have accented characters in the name
-- Looking for tracks with á, é, í, ó, ú (and uppercase versions)
-- Examples: Jorge Da Capadócia, Samba De Uma Nota Só (One Note Samba)

SELECT TrackId, Name
FROM tracks
WHERE Name LIKE '%á%'
   OR Name LIKE '%é%'
   OR Name LIKE '%í%'
   OR Name LIKE '%ó%'
   OR Name LIKE '%ú%'
   OR Name LIKE '%Á%'
   OR Name LIKE '%É%'
   OR Name LIKE '%Í%'
   OR Name LIKE '%Ó%'
   OR Name LIKE '%Ú%';
