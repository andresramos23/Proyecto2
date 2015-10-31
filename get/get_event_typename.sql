USE `proyecto2`;
DROP function IF EXISTS `get_event_typename`;

DELIMITER $$
USE `proyecto2`$$
create function get_event_typename(pId int)
RETURNS INT
BEGIN
declare val VARCHAR(45);

select 
type_name
into val
from type_e
where id_type = get_event_typeid(pId);
RETURN val;

END$$

DELIMITER ;

