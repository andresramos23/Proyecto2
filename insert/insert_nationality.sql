USE `proyecto2`;
DROP procedure IF EXISTS `insert_nationality`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_nationality(pnationality VARCHAR(45))

BEGIN
    insert into nationality(nationality_name)
	VALUES (pnationality);
	commit;  
END$$

DELIMITER ;

