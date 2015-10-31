CREATE TABLE `proyecto2`.`player` (
  `id_player` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `picture` VARCHAR(100) NULL,
  `shirt_number` INT NULL,
  `Nationality_id` INT NULL,
  PRIMARY KEY (`id_player`),
  INDEX `nationality_id_idx` (`Nationality_id` ASC),
  CONSTRAINT `nationality_id`
    FOREIGN KEY (`Nationality_id`)
    REFERENCES `proyecto2`.`nationality` (`id_nationality`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


ALTER TABLE `proyecto2`.`player` 
DROP FOREIGN KEY `nationality_id`;
ALTER TABLE `proyecto2`.`player` 
CHANGE COLUMN `Nationality_id` `id_nationality` INT(11) NULL DEFAULT NULL ;
ALTER TABLE `proyecto2`.`player` 
ADD CONSTRAINT `nationality_id`
  FOREIGN KEY (`id_nationality`)
  REFERENCES `proyecto2`.`nationality` (`id_nationality`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
