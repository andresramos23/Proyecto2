USE `proyecto2`;
DROP procedure IF EXISTS `update_teamxgroup_goalAgainst`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_teamxgroup_goalAgainst(pGoal int,pTeam int,pGroup int)

BEGIN
	update teamxgroup
    set goal_against = pGoal
    where id_team = pTeam and id_group = pGroup;
	commit;  
END$$

DELIMITER ;

