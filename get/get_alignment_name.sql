USE `proyecto2`;
DROP function IF EXISTS `get_alignment_name`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_alignment_name(pId int) 
RETURNS varchar(45)
BEGIN
declare val VARCHAR(45);

select 
alignment_name 
into val
from alignment
 where alignment_id = pId;
RETURN val;
END$$

DELIMITER ;

