USE `proyecto2`;
DROP function IF EXISTS `get_type_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_type_name(pId int) 
RETURNS VARCHAR(45)
BEGIN
declare val VARCHAR(45);
select 
type_name
into val
from type_e
where id_type = pId;
RETURN val;
END$$

DELIMITER ;

