CREATE TABLE `proyecto2`.`parameter` (
  `id_parameter` INT NOT NULL,
  `parameter_name` VARCHAR(45) NULL,
  `parameter_value` INT NULL,
  `parameter_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id_parameter`));

ALTER TABLE `proyecto2`.`parameter` 
CHANGE COLUMN `id_parameter` `id_parameter` INT(11) NOT NULL AUTO_INCREMENT ;
