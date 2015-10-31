USE `proyecto2`;
DROP function IF EXISTS `get_gamexteam_goalV`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_gamexteam_goalV(pGame int,pTeam int) 
RETURNS INT
BEGIN

declare val INT;
select 
goalV
into val
from gamexteam
where id_game = pGame and id_team = pTeam;
RETURN val;
END$$

DELIMITER ;

