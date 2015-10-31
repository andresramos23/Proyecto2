USE `proyecto2`;
DROP function IF EXISTS `get_stadium`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_stadium(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
stadium_name
into val
from stadium
where id_stadium =pInt;
RETURN val;
END$$

DELIMITER ;

