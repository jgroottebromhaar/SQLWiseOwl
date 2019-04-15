SELECT tblAuthor.AuthorName, tblDoctor.DoctorName, COUNT(tblEpisode.EpisodeId) AS 'Episodes' 
FROM tblAuthor
INNER JOIN tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId
INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId
GROUP BY tblAuthor.AuthorName, tblDoctor.DoctorName
HAVING COUNT(tblEpisode.EpisodeId) > 5
ORDER BY [Episodes] DESC;