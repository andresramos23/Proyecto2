USE `proyecto2`;
DROP function IF EXISTS `get_country_continentid`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_country_continentid(pId int) 
RETURNS varchar(45)
BEGIN
declare val VARCHAR(45);

select 
id_continent
into val
from country
where id_country = pId;
RETURN val;
END$$

DELIMITER ;

