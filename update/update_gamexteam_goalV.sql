USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_goalV`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_goalV(pgoalV int,pTeam int,pGame int)

BEGIN
	update gamexteam
    set goalV = pgoalV
      where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

