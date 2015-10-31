USE `proyecto2`;
DROP procedure IF EXISTS `update_teamxgroup_winmatch`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_teamxgroup_winmatch(pMatch int,pTeam int,pGroup int)

BEGIN
	update teamxgroup
    set win_match = pMatch
    where id_team = pTeam and id_group = pGroup;
	commit;  
END$$

DELIMITER ;

