USE `proyecto2`;
DROP procedure IF EXISTS `update_gamexteam_expulsions`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_gamexteam_expulsions(pexpulsions int,pTeam int, pGame int)

BEGIN
	update gamexteam
    set expulsions = pexpulsions
	where id_team = pTeam and id_game = pGame;
	commit;  
END$$

DELIMITER ;

