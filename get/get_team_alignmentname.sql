USE `proyecto2`;
DROP function IF EXISTS `get_team_alignmentname`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_team_alignmentname(pInt int) 
RETURNS VARCHAR(45)
BEGIN
declare val VARCHAR(45);
select 
alignment_name
into val
from alignment
where alignment_id = get_team_alignmentid(pInt);
RETURN val;
END$$

DELIMITER ;

