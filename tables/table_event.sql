CREATE TABLE `proyecto2`.`event` (
  `id_event` INT NOT NULL AUTO_INCREMENT,
  `event_name` VARCHAR(45) NULL,
  `id_type` INT NULL,
  PRIMARY KEY (`id_event`),
  INDEX `id_type_idx` (`id_type` ASC),
  CONSTRAINT `id_type`
    FOREIGN KEY (`id_type`)
    REFERENCES `proyecto2`.`type` (`id_type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    ALTER TABLE `proyecto2`.`event` 
RENAME TO  `proyecto2`.`event_game` ;
