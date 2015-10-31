USE `proyecto2`;
DROP procedure IF EXISTS `update_continent_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_continent_name(pcontinent VARCHAR(45),pId int)

BEGIN
	update continent
    set continent_name = pcontinent
    where id_continent = pId ;
	commit;  
END$$

DELIMITER ;

