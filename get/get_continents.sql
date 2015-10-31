USE `proyecto2`;
DROP procedure IF EXISTS `get_continents`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_continents()
MODIFIES SQL DATA
BEGIN
  SELECT continents_name from continent;

END$$

DELIMITER ;

