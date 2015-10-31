USE `proyecto2`;
DROP procedure IF EXISTS `update_event_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_event_name(pevent VARCHAR(45),pId int)

BEGIN
	update event_game
    set event_name = pevent
    where id_event =pId ;
	commit;  
END$$

DELIMITER ;

