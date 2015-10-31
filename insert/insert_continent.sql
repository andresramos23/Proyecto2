USE `proyecto2`;
DROP procedure IF EXISTS `insert_continent`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_continent(pcontinentname VARCHAR(45))

BEGIN
    insert into continent(continent_name)
	VALUES (pcontinentName);
    commit;  
END$$

DELIMITER ;

