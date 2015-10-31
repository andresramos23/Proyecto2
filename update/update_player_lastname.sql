USE `proyecto2`;
DROP procedure IF EXISTS `update_player_lastname`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_player_lastname(pLastName VARCHAR(45),pId int)

BEGIN
	update player
    set last_name = pLastName
    where id_player = pId;
	commit;  
END$$

DELIMITER ;

