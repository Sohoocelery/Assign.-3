-- Query 7 (BONUS): List all customers that listen to longer-than-average tracks
-- Excludes tracks longer than 15 minutes (15 * 60 * 1000 milliseconds)
-- Only considers tracks that are 15 minutes or less when calculating the average

SELECT DISTINCT
    c.CustomerId,
    c.FirstName,
    c.LastName
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN tracks t ON ii.TrackId = t.TrackId
WHERE t.Milliseconds > (
    SELECT AVG(Milliseconds) 
    FROM tracks 
    WHERE Milliseconds <= 15 * 60 * 1000
)
AND t.Milliseconds <= 15 * 60 * 1000;
