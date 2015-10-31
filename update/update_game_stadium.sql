USE `proyecto2`;
DROP procedure IF EXISTS `update_game_stadium`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_game_stadium(pstadium int,pId int)

BEGIN
	update game
    set id_stadium = pstadium
    where id_game = pId ;
	commit; 
END$$

DELIMITER ;

