CREATE TABLE `proyecto2`.`group` (
  `id_group` INT NOT NULL,
  `group_name` VARCHAR(45) NULL,
  `id_event` INT NULL,
  PRIMARY KEY (`id_group`),
  INDEX `id_event_idx` (`id_event` ASC),
  CONSTRAINT `id_event`
    FOREIGN KEY (`id_event`)
    REFERENCES `proyecto2`.`event` (`id_event`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
ALTER TABLE `proyecto2`.`group` 
CHANGE COLUMN `id_group` `id_group` INT(11) NOT NULL AUTO_INCREMENT ;

ALTER TABLE `proyecto2`.`group` 
RENAME TO  `proyecto2`.`groups` ;