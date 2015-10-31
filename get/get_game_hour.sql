USE `proyecto2`;
DROP function IF EXISTS `get_game_hour`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_game_hour(pId int) 
RETURNS varchar(45)
BEGIN

declare val VARCHAR(45);
select 
hour_game
into val
from game
 where id_game = pId;
RETURN val;
END$$

DELIMITER ;

