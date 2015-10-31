USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_goalH`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_goalH(pgoalH int,pTeam int, pGame int)

BEGIN
	update gamexteam
    set goalH = pgoalH
      where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

