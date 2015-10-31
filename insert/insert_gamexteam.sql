USE `proyecto2`;
DROP procedure IF EXISTS `insert_gamexteam`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_gamexteam(pGame INT,pTeam INT,pExpulsions INT,
pCorners INT,pGoalH INT,pGoalV INT,pYellowCard INT,pRedCard INT,pSavers INT)

BEGIN
    insert into gamexteam(id_game,id_team,expulsions,corners,goalH,goalV,yellow_card,red_card,savers)
	VALUES (pGame,pTeam,pExpulsions,pCorners,pGoalH,pGoalV,pYellow_card,pRed_card,pSavers);
    commit;  
END$$

DELIMITER ;

