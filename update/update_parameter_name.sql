USE `proyecto2`;
DROP procedure IF EXISTS `update_parameter_name`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_parameter_name(pparameterName VARCHAR(45),pId int)

BEGIN
	update parameter
    set parameter_name = pparameterName
    where id_parameter = pId;
	commit;  
END$$

DELIMITER ;

