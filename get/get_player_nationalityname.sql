USE `proyecto2`;
DROP function IF EXISTS `get_player_nationalityname`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_player_nationalityname(pInt int) 
RETURNS INT
BEGIN

declare val INT;
select 
nationality_name
into val
from player
where id_nationality = get_player_nationalityid(pInt);
RETURN val;
END$$

DELIMITER ;

