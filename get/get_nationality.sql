USE `proyecto2`;
DROP function IF EXISTS `get_nationality`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_nationality(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
nationality_name
into val
from nationality
where id_nationality = pInt;
RETURN val;
END$$

DELIMITER ;

