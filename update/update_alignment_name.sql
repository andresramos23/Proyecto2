USE `proyecto2`;
DROP procedure IF EXISTS `update_alignment_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_alignment_name(pAlignment VARCHAR(45),pId int)

BEGIN
	update alignment 
    set alignment_name = pAligment
    where id_aligment = pId ;
	commit;  
END$$

DELIMITER ;

