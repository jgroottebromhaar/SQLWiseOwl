SELECT tblAuthor.AuthorName 
FROM (((tblAuthor 
INNER JOIN tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId)
INNER JOIN tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId)
INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId)
WHERE tblEnemy.EnemyName = 'Daleks';