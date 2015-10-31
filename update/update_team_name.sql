USE `proyecto2`;
DROP procedure IF EXISTS `update_team_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_team_name(pteam_name VARCHAR(45),pId int)

BEGIN
	update team
    set team_name = pteam_name
    where id_team = pId;
	commit;  
END$$

DELIMITER ;

