CREATE TABLE `proyecto2`.`game` (
  `id_game` INT NOT NULL AUTO_INCREMENT,
  `hour` VARCHAR(45) NULL,
  `game_date` DATETIME NULL,
  `id_stadium` INT NULL,
  PRIMARY KEY (`id_game`),
  INDEX `id_stadium_idx` (`id_stadium` ASC),
  CONSTRAINT `id_stadium`
    FOREIGN KEY (`id_stadium`)
    REFERENCES `proyecto2`.`stadium` (`id_stadium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `proyecto2`.`game` 
CHANGE COLUMN `hour` `hour_game` VARCHAR(45) NULL DEFAULT NULL ;
