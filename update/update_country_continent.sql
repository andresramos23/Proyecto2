USE `proyecto2`;
DROP procedure IF EXISTS `update_country_continent`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_country_continent(pcontinent int,pId int)

BEGIN
	update country
    set id_continent = pcontinent
    where id_country = pId ;
	commit;  
END$$

DELIMITER ;

