USE `proyecto2`;
DROP procedure IF EXISTS `insert_player`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_player(pFirstName VARCHAR(45),pLastName VARCHAR(45),
pPicture VARCHAR(100),pShirt INT,pNationality int)

BEGIN
    insert into player(first_name,last_name,picture,shirt_number,id_nationality)
	VALUES (pFirstName,pLastName,pPicture,pShirt,pNationality);
	commit;  
END$$

DELIMITER ;

