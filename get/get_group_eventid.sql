USE `proyecto2`;
DROP function IF EXISTS `get_group_eventid`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_group_eventid(pInt int) 
RETURNS INT
BEGIN

declare val INT;
select 
id_event
into val
from groups
where id_group = pInt;
RETURN val;
END$$

DELIMITER ;

