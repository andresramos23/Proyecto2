USE `proyecto2`;
DROP procedure IF EXISTS `insert_parameter`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_parameter(pName VARCHAR(45),pDescription VARCHAR(45),pValue INT)

BEGIN
    insert into parameter(parameter_name,parameter_description,parameter_value)
	VALUES (pName,pDescription,pValue);
	commit;  
END$$

DELIMITER ;

