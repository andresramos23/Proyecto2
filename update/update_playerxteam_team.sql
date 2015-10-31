USE `proyecto2`;
DROP procedure IF EXISTS `update_playerxteam_team`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_playerxteam_team(pteam int)

BEGIN
	update playerxteam
    set id_team = pteam;
	commit;  
END$$

DELIMITER ;

