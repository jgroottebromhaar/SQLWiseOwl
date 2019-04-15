SELECT tblAuthor.AuthorName, COUNT(tblEpisode.EpisodeId) AS 'Episodes', 
MIN(tblEpisode.EpisodeDate) AS 'Earliest date', MAX(tblEpisode.EpisodeDate) AS 'Latest date' 
FROM tblEpisode
INNER JOIN tblAuthor ON tblEpisode.AuthorId = tblAuthor.AuthorId
GROUP BY tblAuthor.AuthorName
ORDER BY [Episodes] DESC;