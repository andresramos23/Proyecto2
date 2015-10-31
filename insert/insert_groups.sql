USE `proyecto2`;
DROP procedure IF EXISTS `insert_groups`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_groups(pEvent INT,pGroupName VARCHAR(45))

BEGIN
    insert into groups(id_event, group_name)
	VALUES (pEvent,pGroupName);
	commit;  
END$$

DELIMITER ;

