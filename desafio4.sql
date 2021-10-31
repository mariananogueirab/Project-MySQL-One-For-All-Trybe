CREATE VIEW top_3_artistas AS SELECT a.artista AS `artista`, COUNT(s.artista_id) AS `seguidores`
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo AS s
ON s.artista_id = a.artista_id
GROUP BY s.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
