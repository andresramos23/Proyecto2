USE `proyecto2`;
DROP procedure IF EXISTS `update_player_nationality`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_player_nationality(pnationality int,pId int)

BEGIN
	update player
    set id_nationality = pnationality
    where id_player = pId;
	commit;  
END$$

DELIMITER ;

