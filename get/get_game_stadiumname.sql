USE `proyecto2`;
DROP function IF EXISTS `get_game_stadiumname`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_game_stadiumname(pId int) 
RETURNS VARCHAR(45)
BEGIN

declare val varchar(45);
select 
stadium_name
into val
from stadium
where id_stadium =get_game_stadiumid(pId);
RETURN val;
END$$

DELIMITER ;

