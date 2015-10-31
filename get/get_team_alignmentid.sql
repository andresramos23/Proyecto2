USE `proyecto2`;
DROP function IF EXISTS `get_team_alignmentid`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_team_alignmentid(pInt int) 
RETURNS int
BEGIN
declare val int;
select 
id_alignment
into val
from team
where id_team = pInt;
RETURN val;
END$$

DELIMITER ;

