USE `proyecto2`;
DROP procedure IF EXISTS `update_stadium_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_stadium_name(pname VARCHAR(45),pId int)

BEGIN
	update stadium
    set stadium_name = pname
    where id_stadium = pId;
	commit;  
END$$

DELIMITER ;

