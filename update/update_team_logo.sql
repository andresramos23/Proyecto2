USE `proyecto2`;
DROP procedure IF EXISTS `update_team_logo`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_team_logo(plogo VARCHAR(45),pId int)

BEGIN
	update team
    set team_logo = plogo
    where id_team = pId;
	commit;  
END$$

DELIMITER ;

