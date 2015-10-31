USE `proyecto2`;
DROP procedure IF EXISTS `update_teamxgroup_playedmatch`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_teamxgroup_playedmatch(pMatch int,pTeam int,pGroup int)

BEGIN
	update teamxgroup
    set played_match = pMatch
    where id_team = pTeam and id_group = pGroup;
	commit;  
END$$

DELIMITER ;

