USE `proyecto2`;
DROP procedure IF EXISTS `update_game_hour`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_game_hour(phour VARCHAR(45),pId int)

BEGIN
	update game
    set hour_game = phour
    where id_game = pId ;
	commit;  
END$$

DELIMITER ;

