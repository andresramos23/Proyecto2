USE `proyecto2`;
DROP function IF EXISTS `get_continent_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_continent_name(pId int) 
RETURNS varchar(45)
BEGIN
declare val VARCHAR(45);

select 
continent_name 
into val
from continent
 where id_continent = pId;
RETURN val;
END$$

DELIMITER ;

