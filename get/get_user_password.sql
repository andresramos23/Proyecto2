USE `proyecto2`;
DROP function IF EXISTS `get_user_password`;

DELIMITER $$
USE `proyecto2`$$
CREATE FUNCTION get_user_pasword(pId int) 
RETURNS VARCHAR(45)
BEGIN
declare val VARCHAR(45);
select 
user_password
into val
from user_e
where id_user = pId;
RETURN val;
END$$

DELIMITER ;

