USE `proyecto2`;
DROP function IF EXISTS `get_player_nationalityid`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_player_nationalityid(pInt int) 
RETURNS INT
BEGIN

declare val INT;
select 
id_nationality
into val
from player
where id_player = pInt;
RETURN val;
END$$

DELIMITER ;

