USE `proyecto2`;
DROP function IF EXISTS `get_country_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_country_name(pId int) 
RETURNS varchar(45)
BEGIN
declare val VARCHAR(45);

select 
country_name 
into val
from country
 where id_country = pId;
RETURN val;
END$$

DELIMITER ;

