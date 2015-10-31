USE `proyecto2`;
DROP procedure IF EXISTS `update_groups_event`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_groups_event(pevent int,pId int)

BEGIN
	update groups
    set id_event = pevent
    where id_group = pId;
	commit;  
END$$

DELIMITER ;

