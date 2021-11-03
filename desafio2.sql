CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT c.cancao_id) AS `cancoes`,
COUNT(DISTINCT ar.artista_id) AS `artistas`,
COUNT(DISTINCT al.album_id) AS `albuns`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al;

SELECT * FROM estatisticas_musicais;
