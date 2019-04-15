SELECT YEAR(tblEpisode.EpisodeDate) AS 'Episode year', tblEnemy.EnemyName, 
COUNT(tblEpisode.EpisodeId) AS 'Number of episodes' 
FROM tblEpisode
INNER JOIN tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId
INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId
INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId
WHERE YEAR(tblDoctor.BirthDate) < 1970
GROUP BY YEAR(tblEpisode.EpisodeDate), tblEnemy.EnemyName
HAVING COUNT(tblEpisode.EpisodeId) != 1
ORDER BY [Number of episodes] DESC;