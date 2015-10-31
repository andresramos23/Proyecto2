USE `proyecto2`;
DROP function IF EXISTS `get_username`;

DELIMITER $$
USE `proyecto2`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_username`(idP int) 
RETURNS VARCHAR(45)
BEGIN
declare userName VARCHAR(45);

select user_name 
into userName
from user
 where id_user = idP;
RETURN userName;
END$$

DELIMITER ;

