DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistaIN VARCHAR(50))
BEGIN
  SELECT ar.artista AS `artista`,
  al.album AS `album`
  FROM SpotifyClone.artistas as ar
  INNER JOIN SpotifyClone.albuns as al
  ON ar.artista_id = al.artista_id
  WHERE artista = artistaIN
  ORDER BY `album`;

END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
