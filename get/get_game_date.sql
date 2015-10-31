USE `proyecto2`;
DROP function IF EXISTS `get_game_date`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_game_date(pId int) 
RETURNS date
BEGIN

declare val date;
select 
game_date
into val
from game
 where id_game = pId;
RETURN val;
END$$

DELIMITER ;

