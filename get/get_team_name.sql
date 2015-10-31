USE `proyecto2`;
DROP function IF EXISTS `get_team_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_team_name(pInt int) 
RETURNS VARCHAR(45)
BEGIN

declare val VARCHAR(45);
select 
team_name
into val
from team
where id_team = pInt;
RETURN val;
END$$

DELIMITER ;

