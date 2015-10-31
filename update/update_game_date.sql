USE `proyecto2`;
DROP procedure IF EXISTS `update_game_date`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_game_date(pdate datetime,pId int)

BEGIN
	update game
    set game_date = pdate
    where id_game = pId ;
	commit;  
END$$

DELIMITER ;

