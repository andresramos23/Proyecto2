USE `proyecto2`;
DROP procedure IF EXISTS `insert_type`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_type(pType VARCHAR(45))

BEGIN
    insert into type_e(type_name)
	VALUES (pType);
    commit;  
END$$

DELIMITER ;

