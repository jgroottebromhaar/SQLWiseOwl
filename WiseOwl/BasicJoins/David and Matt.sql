SELECT tblDoctor.DoctorName, tblEpisode.Title 
FROM tblEpisode INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId
WHERE YEAR(tblEpisode.EpisodeDate) = '2010';