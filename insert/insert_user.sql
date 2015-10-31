USE `proyecto2`;
DROP procedure IF EXISTS `insert_user`;

DELIMITER $$
USE `proyecto2`$$
create procedure insert_user(pUserName VARCHAR(45),pPassword VARCHAR(45))

BEGIN
    insert into user_event(user_name,user_password)
	VALUES (pUserName,pPassword);
	commit;  
END$$

DELIMITER ;

