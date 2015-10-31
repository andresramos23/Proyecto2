USE `proyecto2`;
DROP procedure IF EXISTS `update_groups_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_groups_name(pName VARCHAR(45),pId int)

BEGIN
	update groups
    set group_name = pName
     where id_group = pId;
	commit;  
END$$

DELIMITER ;

