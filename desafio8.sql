DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
	DELETE FROM historico_de_reproducoes WHERE usuario_id = OLD.usuario_id;
    DELETE FROM seguindo WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;

DELETE FROM usuarios WHERE usuario_id = 1;
