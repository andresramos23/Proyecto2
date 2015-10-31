USE `proyecto2`;
DROP function IF EXISTS `get_event_name`;

DELIMITER $$
USE `proyecto2`$$
create function get_event_name (pId int)
RETURNS VARCHAR(45)
BEGIN
declare val VARCHAR(45);

select 
event_name
into val
from event_game
where id_event = pId;
RETURN val;

END$$

DELIMITER ;

