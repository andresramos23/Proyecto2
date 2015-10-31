USE `proyecto2`;
DROP procedure IF EXISTS `update_team_alignment`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_team_alignment(palignment int,pId int)

BEGIN
	update team
    set id_alignment = palignment
    where id_team = pId;
	commit;  
END$$

DELIMITER ;

