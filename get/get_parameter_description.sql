USE `proyecto2`;
DROP function IF EXISTS `get_parameter_description`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_parameter_description(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
parameter_description
into val
from parameter
where id_parameter = pInt;
RETURN val;
END$$

DELIMITER ;

