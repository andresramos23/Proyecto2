USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_savers`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_savers(psavers int,pGame int,pTeam int)

BEGIN
	update gamexteam
    set savers = psavers
      where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

