USE `proyecto2`;
DROP function IF EXISTS `get_teamxgroup_goalagainst`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_teamxgroup_goalagainst(pTeam int,pGroup int) 
RETURNS INT
BEGIN
declare val INT;
select 
goal_against
into val
from teamxgroup
where id_team = pTeam and id_group = pGroup;
RETURN val;
END$$

DELIMITER ;

