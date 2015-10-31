USE `proyecto2`;
DROP procedure IF EXISTS `update_team_capitan`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_team_capitan(pcapitan int,pId int)

BEGIN
	update team
    set id_capitan= pcapitan
    where id_team = pId;
	commit;  
END$$

DELIMITER ;

