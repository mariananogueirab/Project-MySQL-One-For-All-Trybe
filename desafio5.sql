CREATE VIEW top_2_hits_do_momento AS SELECT c.cancao AS `cancao`, COUNT(h.cancao_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
