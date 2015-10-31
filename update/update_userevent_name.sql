USE `proyecto2`;
DROP procedure IF EXISTS `update_userevent_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_userevent_name(pName VARCHAR(45), pid int)

BEGIN
	update user_event
    set user_name = pName
    where id_user = pid;
	commit;  
END$$

DELIMITER ;

