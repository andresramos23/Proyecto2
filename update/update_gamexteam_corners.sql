USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_corners`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_corners(pcorners int,pGame int,pTeam int)

BEGIN
	update gamexteam
    set corners = pcorners
    where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

