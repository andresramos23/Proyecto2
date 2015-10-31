USE `proyecto2`;
DROP function IF EXISTS `get_team_capitan`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_team_capitan(pInt int) 
RETURNS int
BEGIN

declare val int;
select 
id_capitan
into val
from team
where id_team = pInt;
RETURN val;
END$$

DELIMITER ;

