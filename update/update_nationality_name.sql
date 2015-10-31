USE `proyecto2`;
DROP procedure IF EXISTS `update_nationality_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_nationality_name(pnationality VARCHAR(45),pId int)

BEGIN
	update nationality
    set nationality_name = pnationality
     where id_nationality = pId;
	commit;  
END$$

DELIMITER ;

