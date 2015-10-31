USE `proyecto2`;
DROP procedure IF EXISTS `insert_stadium`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_stadium(pstadium VARCHAR(45))

BEGIN
    insert into stadium(stadium_name)
	VALUES (pstadium);
    commit;  
END$$

DELIMITER ;

