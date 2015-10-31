USE `proyecto2`;
DROP function IF EXISTS `get_parameter_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_parameter_name(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
parameter_name
into val
from parameter
where id_parameter = pInt;
RETURN val;
END$$

DELIMITER ;

