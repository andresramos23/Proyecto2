USE `proyecto2`;
DROP procedure IF EXISTS `update_userevent_password`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_userevent_password(pPass VARCHAR(45), pid int)

BEGIN
	update user_event
    set user_password = pPass
    where id_user = pid;
	commit;  
END$$

DELIMITER ;

