USE `proyecto2`;
DROP procedure IF EXISTS `get_events`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_events()
MODIFIES SQL DATA
BEGIN
  SELECT event_name from event_game;

END$$

DELIMITER ;

