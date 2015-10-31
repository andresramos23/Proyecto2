USE `proyecto2`;
DROP procedure IF EXISTS `update_player_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_player_name(pfirstName VARCHAR(45),pId int)

BEGIN
	update player
    set first_name = pfirstName
    where id_player = pId;
	commit;  
END$$

DELIMITER ;

