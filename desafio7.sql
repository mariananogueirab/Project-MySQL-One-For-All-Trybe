CREATE VIEW perfil_artistas AS SELECT ar.artista AS `artista`,
al.album AS `album`,
COUNT(s.artista_id) AS `seguidores`
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS ar
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo AS s
ON ar.artista_id = s.artista_id
GROUP BY al.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
