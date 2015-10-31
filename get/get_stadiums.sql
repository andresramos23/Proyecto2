USE `proyecto2`;
DROP procedure IF EXISTS `get_stadiums`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_stadiums()
MODIFIES SQL DATA
BEGIN
  SELECT stadium_name from stadium;

END$$

DELIMITER ;

