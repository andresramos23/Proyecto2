USE `proyecto2`;
DROP function IF EXISTS `get_player_shirt`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_player_shirt(pInt int) 
RETURNS INT
BEGIN

declare val INT;
select 
shirt_number
into val
from player
where id_player = pInt;
RETURN val;
END$$

DELIMITER ;

