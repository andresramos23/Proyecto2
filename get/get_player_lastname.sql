USE `proyecto2`;
DROP function IF EXISTS `get_player_lastname`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_player_lastname(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
last_name
into val
from player
where id_player = pInt;
RETURN val;
END$$

DELIMITER ;

