USE `proyecto2`;
DROP procedure IF EXISTS `update_country_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_country_name(pcountry VARCHAR(45),pId int)

BEGIN
	update country
    set country_name = pcountry
    where id_country = pId ;
	commit;  
END$$

DELIMITER ;

