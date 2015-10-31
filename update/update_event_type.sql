USE `proyecto2`;
DROP procedure IF EXISTS `update_event_type`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_event_type(ptype int,pId int)

BEGIN
	update event_game
    set id_type = ptype
    where id_event = pId ;
	commit;  
END$$

DELIMITER ;

