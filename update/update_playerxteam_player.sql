USE `proyecto2`;
DROP procedure IF EXISTS `update_playerxteam_player`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_playerxteam_player(pplayer int)

BEGIN
	update playerxteam
    set idplayer = pplayer;
	commit;  
END$$

DELIMITER ;

