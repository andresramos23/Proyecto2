USE `proyecto2`;
DROP procedure IF EXISTS `get_groups`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_groups()
MODIFIES SQL DATA
BEGIN
  SELECT group_name from groups;

END$$

DELIMITER ;

