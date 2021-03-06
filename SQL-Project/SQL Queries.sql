/*Query-1 used to Answer the First Presentation Question*/
SELECT g.name,
       count(*) gener_count
FROM Genre g
JOIN Track t ON g.GenreId=t.GenreId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
.
.
.
/*Query-2 used to Answer the sec Presentation Question*/
SELECT p.Name,
       COUNT(pt.TrackId) AS "Number Of Tracks"
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.name;
.
.
.
/*Query-3 used to Answer the Third Presentation Question*/
SELECT a.title,
       (SUM(i.Quantity)*(i.UnitPrice)) AS total_album_sales
FROM Track t
JOIN Album a ON a.AlbumId= t.AlbumId
JOIN InvoiceLine i ON t.TrackId=i.TrackId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
.
.
/*Query-4 used to Answer the Fourth Presentation Question*/
SELECT c.FirstName,
       sum(i.Total) total_amount
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY i.Total DESC
LIMIT 10;
