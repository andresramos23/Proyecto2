USE `proyecto2`;
DROP procedure IF EXISTS `insert_align`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_align(palign VARCHAR(45))

BEGIN
    insert into alignment(alignment_name)
	VALUES (palign);
    commit;  
END$$

DELIMITER ;

