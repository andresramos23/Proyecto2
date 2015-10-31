USE `proyecto2`;
DROP function IF EXISTS `get_gamexteam_savers`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_gamexteam_savers(pGame int,pTeam int) 
RETURNS INT
BEGIN

declare val INT;
select 
savers
into val
from gamexteam
where id_game =pGame and id_team = pTeam;
RETURN val;
END$$

DELIMITER ;

