USE `proyecto2`;
DROP function IF EXISTS `get_group_eventname`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_group_eventname(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
event_name
into val
from event_game
where id_event = get_group_eventid(pInt);
RETURN val;
END$$

DELIMITER ;

