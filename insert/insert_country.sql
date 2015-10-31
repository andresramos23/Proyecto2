USE `proyecto2`;
DROP procedure IF EXISTS `insert_country`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_country(pCountry VARCHAR(45),pContinent int)

BEGIN
    insert into country(Country_name,id_continent)
	VALUES (pCountry,pContinent);
    commit;  
END$$

DELIMITER ;

