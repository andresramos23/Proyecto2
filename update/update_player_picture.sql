USE `proyecto2`;
DROP procedure IF EXISTS `update_player_picture`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_player_picture(ppicture VARCHAR(100),pId int)

BEGIN
	update player
    set picture = ppicture
     where id_player = pId;
	commit;  
END$$

DELIMITER ;

