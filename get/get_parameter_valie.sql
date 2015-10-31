USE `proyecto2`;
DROP function IF EXISTS `get_parameter_value`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_parameter_value(pInt int) 
RETURNS INT
BEGIN

declare val int;
select 
parameter_value
into val
from parameter
where id_parameter = pInt;
RETURN val;
END$$

DELIMITER ;

