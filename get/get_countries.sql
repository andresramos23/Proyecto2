USE `proyecto2`;
DROP procedure IF EXISTS `get_countries`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_countries()
MODIFIES SQL DATA
BEGIN
  SELECT country_name from country;

END$$

DELIMITER ;

