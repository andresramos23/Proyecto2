USE `proyecto2`;
DROP procedure IF EXISTS `update_parameter_description`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_parameter_description(pparameterdescription VARCHAR(45),pId int)

BEGIN
	update parameter
    set parameter_description = pparameterdescription
    where id_parameter = pId;
	commit;  
END$$

DELIMITER ;

