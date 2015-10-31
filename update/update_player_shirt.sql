USE `proyecto2`;
DROP procedure IF EXISTS `update_player_shirt`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_player_shirt(pshirt int,pId int)

BEGIN
	update player
    set shirt_number = pshirt
     where id_player = pId;
	commit; 
END$$

DELIMITER ;

