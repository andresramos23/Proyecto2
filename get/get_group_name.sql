USE `proyecto2`;
DROP function IF EXISTS `get_group_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_group_name(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
group_name
into val
from groups
where id_group = pInt;
RETURN val;
END$$

DELIMITER ;

