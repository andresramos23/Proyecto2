USE `proyecto2`;
DROP procedure IF EXISTS `insert_game`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_game(phour VARCHAR(45),pstadium INT,pgame_date datetime)

BEGIN
    insert into game(hour_game,game_date,id_stadium)
	VALUES (pHour,pgame_date,pstadium);
    commit;  
END$$

DELIMITER ;

