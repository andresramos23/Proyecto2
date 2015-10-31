USE `proyecto2`;
DROP function IF EXISTS `get_game_stadiumid`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_game_stadiumid(pId int) 
RETURNS int
BEGIN

declare val int;
select 
id_stadium
into val
from game
 where id_game = pId;
RETURN val;
END$$

DELIMITER ;

