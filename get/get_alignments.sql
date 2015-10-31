USE `proyecto2`;
DROP procedure IF EXISTS `get_alignments`;

DELIMITER $$
USE `proyecto2`$$
CREATE PROCEDURE get_alignments()
MODIFIES SQL DATA
BEGIN
  SELECT alignment_name from alignment;

END$$

DELIMITER ;

