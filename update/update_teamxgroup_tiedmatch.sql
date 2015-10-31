USE `proyecto2`;
DROP procedure IF EXISTS `update_teamxgroup_tiedmatch`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_teamxgroup_tiedmatch(pMatch int,pTeam int,pGroup int)

BEGIN
	update teamxgroup
    set tied_match = pMatch
    where id_team = pTeam and id_group = pGroup;
	commit;  
END$$

DELIMITER ;

