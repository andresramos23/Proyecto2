USE `proyecto2`;
DROP procedure IF EXISTS `get_nationalities`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_nationalities()
MODIFIES SQL DATA
BEGIN
  SELECT nationality_name from nationality;

END$$

DELIMITER ;

