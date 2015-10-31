USE `proyecto2`;
DROP procedure IF EXISTS `update_parameter_value`;

DELIMITER $$
USE `proyecto2`$$
create procedure update_parameter_value(pparameterValue int,pId int)

BEGIN
	update parameter
    set parameter_value = pparameterValue
    where id_parameter = pId;
	commit;  
END$$

DELIMITER ;

