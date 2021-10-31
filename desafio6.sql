CREATE VIEW faturamento_atual AS SELECT MIN(p.valor_plano) AS `faturamento_minimo`,
MAX(p.valor_plano) AS `faturamento_maximo`,
ROUND(AVG(p.valor_plano), 2) AS `faturamento_medio`,
SUM(p.valor_plano) AS `faturamento_total`
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;
