USE `proyecto2`;
DROP function IF EXISTS `get_event_typeid`;

DELIMITER $$
USE `proyecto2`$$
create function get_event_typeid(pId int)
RETURNS INT
BEGIN
declare val INT;

select 
id_type
into val
from event_game
where id_event = pId;
RETURN val;

END$$

DELIMITER ;

