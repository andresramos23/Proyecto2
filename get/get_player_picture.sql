USE `proyecto2`;
DROP function IF EXISTS `get_player_picture`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_player_picture(pInt int) 
RETURNS VARCHAR(100)
BEGIN

declare val VARCHAR(100);
select 
picture
into val
from player
where id_player = pInt;
RETURN val;
END$$

DELIMITER ;

