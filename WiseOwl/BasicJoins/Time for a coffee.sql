SELECT tblAuthor.AuthorName, tblEpisode.Title, tblDoctor.DoctorName, tblEnemy.EnemyName, 
(LEN(tblAuthor.AuthorName) + LEN(tblEpisode.Title) + LEN(tblDoctor.DoctorName) + LEN(tblEnemy.EnemyName)) AS 'Total lenght' 
FROM ((((tblAuthor
INNER JOIN tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId)
INNER JOIN tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId)
INNER JOIN tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId)
INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId)
WHERE (LEN(tblAuthor.AuthorName) + LEN(tblEpisode.Title) + LEN(tblDoctor.DoctorName) + LEN(tblEnemy.EnemyName)) < 40;