USE `proyecto2`;
DROP procedure IF EXISTS `insert_team`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_team(pName VARCHAR(45),pCapitan int,
pLogo VARCHAR(45),pAlignment int)

BEGIN
    insert into team(team_name,id_capitan,team_logo,id_alignment)
	VALUES (pName,pCapitan,pLogo,pAlignment);
	commit;  
END$$

DELIMITER ;

