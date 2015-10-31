USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_yellowcard`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_yellowcard(pyellow_card int,pGame int, pTeam int)

BEGIN
	update gamexteam
    set yellow_card = pyellow_card
      where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

