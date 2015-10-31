USE `proyecto2`;
DROP procedure IF EXISTS `insert_event`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_event(pEvent VARCHAR(45),pType int)

BEGIN
    insert into event_game(event_name,id_type)
	VALUES (pEvent,pType);
    commit;  
END$$

DELIMITER ;

