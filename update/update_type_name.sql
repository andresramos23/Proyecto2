USE `proyecto2`;
DROP procedure IF EXISTS `update_type_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_type_name(pName VARCHAR(45), pid int)

BEGIN
	update type_e
    set type_name = pName
    where id_type = pid;
	commit;  
END$$

DELIMITER ;

