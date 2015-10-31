USE `proyecto2`;
DROP procedure IF EXISTS `insert_playerxteam`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_playerxteam(pPlayer int,pTeam int)

BEGIN
    insert into playerteam(id_player,id_team)
	VALUES (pPLayer,pTeam);
	commit;  
END$$

DELIMITER ;

