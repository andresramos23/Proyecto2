USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_redcard`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_redcard(pred_card int,pTeam int, pGame int)

BEGIN
	update gamexteam
    set red_card = pred_card
      where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

